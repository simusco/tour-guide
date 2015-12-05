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

import com.moma.framework.ServiceException;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.Favorite;
import com.moma.trip.po.Order;
import com.moma.trip.po.User;
import com.moma.trip.service.FavoriteService;
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
	
	@Resource
	private FavoriteService favoriteService;
	
	@RequestMapping(value="/center.html",method=RequestMethod.GET)
	public ModelAndView center(){
		return new ModelAndView("my-center");
	}
	
	@RequestMapping(value="/order/unpay.html",method=RequestMethod.GET)
	public ModelAndView unpay(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		
		User user = (User) request.getSession().getAttribute(User.LOGIN_USER);
		List<Order> orderList = orderService.getOrderList("UNPAY", user.getUserId());
		map.put("orderList", orderList);
		
		return new ModelAndView("my-order-unpay", map);
	}
	
	@RequestMapping(value="/order/payed.html",method=RequestMethod.GET)
	public ModelAndView payed(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		
		User user = (User) request.getSession().getAttribute(User.LOGIN_USER);
		List<Order> orderList = orderService.getOrderList("PAYED", user.getUserId());
		map.put("orderList", orderList);
		
		return new ModelAndView("my-order-payed", map);
	}
	
	@RequestMapping(value="/order/close.html",method=RequestMethod.GET)
	public ModelAndView close(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		
		User user = (User) request.getSession().getAttribute(User.LOGIN_USER);
		List<Order> orderList = orderService.getOrderList("CLOSE", user.getUserId());
		map.put("orderList", orderList);
		
		return new ModelAndView("my-order-close", map);
	}
	
	@RequestMapping(value="/order/cancel.html",method=RequestMethod.GET)
	@ResponseBody
	public byte[] cancel(String orderNo, HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		try{
			User user = (User) request.getSession().getAttribute(User.LOGIN_USER);
			if(user == null){
				throw new ServiceException("用户未登录", "UNLOGIN");
			}
			
			orderService.cancel(orderNo, user.getUserId());
			map.put("flag", true);
		}catch(ServiceException e){
			map.put("flag", false);
			map.put("msg", e.getMessage());
			map.put("msgcode", e.getCode());
		}
		return toJSONBytes(map);
	}
	
	@RequestMapping(value="/favorite.html",method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView favorite(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		
		try{
			User user = (User) request.getSession().getAttribute(User.LOGIN_USER);
			if(user == null){
				throw new ServiceException("用户未登录", "UNLOGIN");
			}
			
			List<Favorite> favorites = favoriteService.getFavoriteByUserId(user.getUserId());
			map.put("favorites", favorites);
			map.put("flag", true);
		}catch(ServiceException e){
			map.put("flag", false);
			map.put("msg", e.getMessage());
			map.put("msgcode", e.getCode());
		}
		
		return new ModelAndView("my-favorite", map);
	}
	
}
