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

import com.moma.framework.ServiceException;
import com.moma.framework.utils.RandomUtils;
import com.moma.framework.utils.SmsNumUtils;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.User;
import com.moma.trip.service.SignUpService;

@Scope(value="prototype")
@Controller
@RequestMapping("/web/v1/user")
public class SignUpController extends RestfulController {

	@Resource
	private SignUpService signUpService;
	
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
			String loginId = user.getLoginId();
			
			Map<String, Object> m = (Map<String, Object>) request.getSession().getAttribute(SmsNumUtils.REG);
			if(m == null || !loginId.equals(m.get(SmsNumUtils.REG_PHONE)) || !m.get(SmsNumUtils.REG_VCODE).equals(user.getAcode())){
				map.put("flag", false);
				map.put("msgcode", 10);
			}else{
				Long time = (Long) m.get(SmsNumUtils.REG_VCODE_TIME);
				Long ctime = new Date().getTime();
				
				if((ctime - time) / 1000 > 600){
					map.put("flag", false);
					map.put("msgcode", 10);
				}else{
					user.setEnable(User.Y);
					signUpService.save(user);
					
					map.put("flag", true);
				}
			}
		}catch(ServiceException e){
			e.printStackTrace();
			
			map.put("flag", false);
			map.put("msgcode", 11);
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
	
	@RequestMapping(value="/vcode.html",method=RequestMethod.GET)
	@ResponseBody
	public byte[] vcode(String phoneNo, HttpServletRequest request){
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(phoneNo == null){
			map.put("flag", false);
			map.put("msg", "手机号不能为空!");
		}else{
			Map<String, Object> m = (Map<String, Object>) request.getSession().getAttribute(SmsNumUtils.REG);
			
			if(m != null){
				Long time = (Long) m.get(SmsNumUtils.REG_VCODE_TIME);
				Long ctime = new Date().getTime();
				
				if(phoneNo.equals(m.get(SmsNumUtils.REG_PHONE)) && (ctime - time) / 1000 <= 120){
					//不可以重新发送
					map.put("flag", false);
					map.put("msg", "发送验证码太频繁!");
					
					return toJSONBytes(map);
				}
			}
			
			String vcode = RandomUtils.getRandomVcode();
			
			m = new HashMap<String, Object>();
			m.put(SmsNumUtils.REG_VCODE, vcode);
			m.put(SmsNumUtils.REG_VCODE_TIME, new Date().getTime());
			m.put(SmsNumUtils.REG_PHONE, phoneNo);
			request.getSession().setAttribute(SmsNumUtils.REG, m);
			
			map = SmsNumUtils.sendRegVCode(phoneNo, vcode);
		}
		
		return toJSONBytes(map);
	}
	
	
}
