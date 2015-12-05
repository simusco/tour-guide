package com.moma.trip.controller.web;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.moma.framework.utils.CookieUtil;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.User;
import com.moma.trip.service.FavoriteService;
import com.moma.trip.service.SignInService;

@Scope(value="prototype")
@Controller
@RequestMapping("/web/v1/user")
public class SignInController  extends RestfulController {

	@Resource
	private SignInService signInService;
	
	@Resource
	private FavoriteService favoriteService;
	
	@RequestMapping(value="/signin.html",method=RequestMethod.GET)
	public String signIn() {
		return "signin";
	}
	
	@RequestMapping(value="/signin.html",method=RequestMethod.POST)
	@ResponseBody
	public byte[] signIn(String phoneNo, String password, String rememberMe,HttpServletRequest request, HttpServletResponse response) {
		
		Map<String, Object> map = new HashMap<String, Object>();
			
		try{
			User user = signInService.signIn(phoneNo, password);
			request.getSession().setAttribute(User.LOGIN_USER, user);
			
			if("Y".equals(rememberMe)){
				CookieUtil cu = new CookieUtil(request, response);
				
				cu.addCookie("loginid", phoneNo, 60 * 60 * 24 * 7);
				cu.addCookie("password", password, 60 * 60 * 24 * 7);
			}
			
			//装载favorite
			user.setFavoriteActivityIds(favoriteService.getFavoriteActivityIds(user.getUserId()));
			
			map.put("flag", true);
		}catch(Exception e){
			map.put("flag", false);
			map.put("msg", e.getMessage());
		}
		
		return JSON.toJSONBytes(map, SerializerFeature.BrowserCompatible);
	}
	
	@RequestMapping(value="/login.html",method=RequestMethod.GET)
	public String login(HttpServletRequest request) {
		return "login";
	}

}
