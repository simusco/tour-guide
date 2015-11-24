package com.moma.trip.controller.web;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.moma.framework.ServiceException;
import com.moma.framework.extra.taobao.api.internal.util.StringUtils;
import com.moma.framework.utils.RandomUtils;
import com.moma.framework.utils.SmsNumUtils;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.User;
import com.moma.trip.service.SignInService;
import com.moma.trip.service.SignUpService;

@Scope(value="prototype")
@Controller
@RequestMapping("/web/v1/user")
public class SignUpController extends RestfulController {

	@Resource
	private SignUpService signUpService;
	
	@Resource
	private SignInService signInService;
	
	public void validateSignup(User user, Map<String, Object> m){
		String loginId = user.getLoginId();
		
		Long time = (Long) m.get(SmsNumUtils.REG_VCODE_TIME);
		Long ctime = new Date().getTime();
		
		if(loginId == null){
			throw new ServiceException("手机必须填写!", "loginId");
		}
	
		User u = signUpService.getUserByLoginId(loginId);
		if(u != null){
			throw new ServiceException("账户已经存在!", "loginId");
		}
		
		if(m == null || !loginId.equals(m.get(SmsNumUtils.REG_PHONE)) || !m.get(SmsNumUtils.REG_VCODE).equals(user.getAcode())){
			throw new ServiceException("验证码错误", "vcode");
		}
		
		if((ctime - time) / 1000 > 600){
			throw new ServiceException("验证码错误", "vcode");
		}
		
		if(StringUtils.isEmpty(user.getName()) || user.getName().trim().length() == 0){
			throw new ServiceException("姓名必须填写", "name");
		}
		
		if(StringUtils.isEmpty(user.getPassword()) || !user.getPassword().equals(user.getRepassword())){
			throw new ServiceException("密码不一致!", "password");
		}
	}
	
	@RequestMapping(value="/signup.html",method=RequestMethod.GET)
	public String signup(){
		return "signup";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/signup.html",method=RequestMethod.POST)
	@ResponseBody
	public byte[] signup(User user, HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		try{
			Map<String, Object> m = (Map<String, Object>) request.getSession().getAttribute(SmsNumUtils.REG);
			
			//验证注册信息是否正确
			validateSignup(user, m);
			
			user.setEnable(User.Y);
			signUpService.save(user);
			map.put("flag", true);
		}catch(ServiceException e){
			e.printStackTrace();
			map.put("flag", false);
			map.put("msgcode", e.getCode());
			map.put("msg", e.getMessage());
		}
		return toJSONBytes(map);
	}
	
	@RequestMapping(value="/exists.html",method=RequestMethod.POST)
	@ResponseBody
	public byte[] exists(String phoneNo){
		
		boolean flag = false;
		User user = signUpService.getUserByLoginId(phoneNo);
		
		if(user != null){
			flag = true;
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("flag", flag);
		
		return toJSONBytes(map);
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/vcode.html",method=RequestMethod.GET)
	@ResponseBody
	public byte[] vcode(String phoneNo, HttpServletRequest request){
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		try{
			if(phoneNo == null){
				throw new ServiceException("手机号不能为空!");
			}
			
			Map<String, Object> m = (Map<String, Object>) request.getSession().getAttribute(SmsNumUtils.REG);
			if(m != null){
				Long time = (Long) m.get(SmsNumUtils.REG_VCODE_TIME);
				Long ctime = new Date().getTime();
				
				if(phoneNo.equals(m.get(SmsNumUtils.REG_PHONE)) && (ctime - time) / 1000 <= 120){
					throw new ServiceException("发送验证码太频繁!");
				}
			}
			
			String vcode = RandomUtils.getRandomVcode();
			
			m = new HashMap<String, Object>();
			m.put(SmsNumUtils.REG_VCODE, vcode);
			m.put(SmsNumUtils.REG_VCODE_TIME, new Date().getTime());
			m.put(SmsNumUtils.REG_PHONE, phoneNo);
			request.getSession().setAttribute(SmsNumUtils.REG, m);
			
			map = SmsNumUtils.sendRegVCode(phoneNo, vcode);
		}catch(Exception e){
			e.printStackTrace();
			map.put("flag", false);
			map.put("msg", e.getMessage());
		}
		
		return toJSONBytes(map);
	}
	
	public void validateResetPsword(String oldpassword, String password, String repassword, User user){
		try{
			signInService.signIn(user.getLoginId(), oldpassword);
		}catch(Exception e){
			throw new ServiceException("旧密码错误！");
		}
		
		if(password == null || repassword == null || !password.equals(repassword)){
			throw new ServiceException("新密码错误！");
		}
	}
	
	@RequestMapping(value="/reset-psword.html",method=RequestMethod.GET)
	public ModelAndView resetPsword(HttpServletRequest request){
		return new ModelAndView("reset-psword");
	}
	
	@RequestMapping(value="/reset-psword.html",method=RequestMethod.POST)
	@ResponseBody
	public byte[] resetPsword(String oldpassword, String password, String repassword, HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		
		User user = (User) request.getSession().getAttribute(User.LOGIN_USER);
		try{
			//验证提交信息
			validateResetPsword(oldpassword, password, repassword, user);
			
			//修改密码
			signUpService.resetPsword(user.getLoginId(), password);
			map.put("flag", true);
		}catch(ServiceException e){
			map.put("flag", false);
			map.put("msg", e.getMessage());//旧密码错误
		}
		
		return toJSONBytes(map);
	}
	
	@RequestMapping(value="/modify-profile.html",method=RequestMethod.GET)
	public ModelAndView modifyProfile(HttpServletRequest request){
		return new ModelAndView("modify-profile");
	}
	
}
