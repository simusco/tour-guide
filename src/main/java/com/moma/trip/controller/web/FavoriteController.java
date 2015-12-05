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
import com.moma.framework.ServiceException;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.User;
import com.moma.trip.service.FavoriteService;

@Scope(value="prototype")
@Controller
@RequestMapping("/web/v1/favorite")
public class FavoriteController  extends RestfulController {

	@Resource
	private FavoriteService favoriteService;
	
	@RequestMapping(value="/col.html",method=RequestMethod.POST)
	@ResponseBody
	public byte[] favorite(String routeId, HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		
		try{
			User user = (User) request.getSession().getAttribute(User.LOGIN_USER);
			if(user == null)
				throw new ServiceException("用户未登录", "UNLOGIN");
			
			favoriteService.favorite(routeId, user.getUserId());
			
			if(user.getFavoriteActivityIds().contains(routeId)){
				user.getFavoriteActivityIds().remove(routeId);
			}else{
				user.getFavoriteActivityIds().add(routeId);
			}
			
			map.put("flag", true);
		}catch(ServiceException e){
			map.put("flag", false);
			map.put("msg", e.getMessage());
			map.put("msgcode", e.getCode());
		}
		
		return JSON.toJSONBytes(map, SerializerFeature.BrowserCompatible);
		
	}
	
}
