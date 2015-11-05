package com.moma.trip.controller.web;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.moma.framework.ServiceException;
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
	
	@RequestMapping(value="/signup.html",method=RequestMethod.POST)
	@ResponseBody
	public byte[] signup(User user){
		Map<String, Object> map = new HashMap<String, Object>();
		try{
			user.setEnable(User.Y);
			signUpService.save(user);
			
			map.put("flag", true);
		}catch(ServiceException e){
			e.printStackTrace();
			
			map.put("flag", false);
			map.put("msg", e.getMessage());
		}
		
		
		return JSON.toJSONBytes(map, SerializerFeature.BrowserCompatible);
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
		
		return JSON.toJSONBytes(map, SerializerFeature.BrowserCompatible);
	}
	
}
