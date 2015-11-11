package com.moma.trip.controller.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.moma.framework.ServiceException;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.Order;
import com.moma.trip.po.User;
import com.moma.trip.service.OrderService;
import com.moma.trip.service.SignInService;
import com.moma.trip.service.SignUpService;

@Scope(value="prototype")
@Controller
@RequestMapping("/web/v1/my")
public class MyController  extends RestfulController {

	@Resource
	private SignInService signInService;
	
	@Resource
	private SignUpService signUpService;
	
	@Resource
	private OrderService orderService;
	
	@RequestMapping(value="/unpay.html",method=RequestMethod.GET)
	public ModelAndView unpay(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		
		User user = (User) request.getSession().getAttribute(User.LOGIN_USER);
		if(user == null){
			//TODO 进入登陆页面
		}
		
		List<Order> orderList = orderService.getOrderList("UNPAY", user.getUserId());
		map.put("orderList", orderList);
		
		return new ModelAndView("my-unpay", map);
	}
	
	@RequestMapping(value="/payed.html",method=RequestMethod.GET)
	public ModelAndView payed(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		
		User user = (User) request.getSession().getAttribute(User.LOGIN_USER);
		if(user == null){
			//TODO 进入登陆页面
		}
		
		List<Order> orderList = orderService.getOrderList("PAYED", user.getUserId());
		map.put("orderList", orderList);
		
		return new ModelAndView("my-payed", map);
	}
	
	@RequestMapping(value="/reset-psword.html",method=RequestMethod.GET)
	public ModelAndView resetPsword(HttpServletRequest request){
		return new ModelAndView("my-reset-psword");
	}
	
	@RequestMapping(value="/reset-psword.html",method=RequestMethod.POST)
	@ResponseBody
	public byte[] resetPsword(String oldpassword, String password, String repassword, HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		
		User user = (User) request.getSession().getAttribute(User.LOGIN_USER);
		if(user == null){
			//TODO 进入登陆页面
		}
		
		try{
			signInService.signIn(user.getLoginId(), oldpassword);
			
			map.put("flag", false);
			if(password == null || repassword == null)
				map.put("msg", "1010");//密码不能为空
			else if (!password.equals(repassword))
				map.put("msg", "1011");//新密码不一致
			
			signUpService.resetPsword(user.getLoginId(), password);
			
			map.put("flag", true);
		}catch(ServiceException e){
			map.put("flag", false);
			map.put("msg", "1009");//旧密码错误
		}
		
		return JSON.toJSONBytes(map, SerializerFeature.BrowserCompatible);
	}
	
	@RequestMapping(value="/modify-profile.html",method=RequestMethod.GET)
	public ModelAndView modifyProfile(HttpServletRequest request){
		return new ModelAndView("my-modify-profile");
	}
	
}
