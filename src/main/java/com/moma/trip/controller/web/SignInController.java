package com.moma.trip.controller.web;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.User;
import com.moma.trip.service.SignInService;

@Scope(value="prototype")
@Controller
@RequestMapping("/web/v1/user")
public class SignInController  extends RestfulController {

	@Resource
	private SignInService signInService;
	
	@RequestMapping(value="/signin.html",method=RequestMethod.GET)
	public String signIn() {
		return "signin";
	}
	
	@RequestMapping(value="/signin.html",method=RequestMethod.POST)
	@ResponseBody
	public byte[] signIn(String phoneNo, String password, HttpServletRequest request) {
		
		Map<String, Object> map = new HashMap<String, Object>();
			
		try{
			User user = signInService.signIn(phoneNo, password);
			request.getSession().setAttribute(User.LOGIN_USER, user);
			
			map.put("flag", true);
		}catch(Exception e){
			map.put("flag", false);
			map.put("msg", e.getMessage());
		}
		
		return JSON.toJSONBytes(map, SerializerFeature.BrowserCompatible);
	}
	
	@RequestMapping(value="/signout.html",method=RequestMethod.GET)
	public String signIn(HttpServletRequest request) {
		
		request.getSession().removeAttribute(User.LOGIN_USER);
		
		return "signin";
	}

}
