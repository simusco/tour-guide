package com.moma.trip.controller.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.User;

@Scope(value="prototype")
@Controller
@RequestMapping("/web/v1/user")
public class SignOutController extends RestfulController {

	@RequestMapping(value="/signout.html",method=RequestMethod.GET)
	public String signout(HttpServletRequest request) {
		
		request.getSession().removeAttribute(User.LOGIN_USER);
		
		return "signin";
	}
	
}
