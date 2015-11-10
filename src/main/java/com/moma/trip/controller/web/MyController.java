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
import org.springframework.web.servlet.ModelAndView;

import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.Order;
import com.moma.trip.po.User;
import com.moma.trip.service.OrderService;

@Scope(value="prototype")
@Controller
@RequestMapping("/web/v1/my")
public class MyController  extends RestfulController {

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
	
	@RequestMapping(value="/modify-profile.html",method=RequestMethod.GET)
	public ModelAndView modifyProfile(HttpServletRequest request){
		return new ModelAndView("my-modify-profile");
	}
	
}
