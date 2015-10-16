package com.moma.trip.controller;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moma.framework.web.WebResult;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.Ticket;

@Scope(value="prototype")
@Controller
@RequestMapping("/ticket")
public class TicketController extends RestfulController {

	@RequestMapping(method=RequestMethod.POST)
	@ResponseBody
	public WebResult save(@RequestBody Ticket ticket){

		System.out.println(ticket);
		
		return null;
	}
	
}
