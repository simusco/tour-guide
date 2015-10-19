package com.moma.trip.controller;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moma.framework.web.WebResult;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.Ticket;
import com.moma.trip.service.TicketService;

@Scope(value="prototype")
@Controller
@RequestMapping("/ticket")
public class TicketController extends RestfulController {

	@Resource
	private TicketService ticketService;
	
	@RequestMapping(method=RequestMethod.POST)
	@ResponseBody
	public WebResult save(@RequestBody Ticket ticket){

		System.out.println(ticket);
		
		ticketService.saveTicket(ticket);
		
		return this.success(null);
	}
	
	@RequestMapping(value="/{id}",method=RequestMethod.DELETE)
	@ResponseBody
	public WebResult delete(@PathVariable String id){

		ticketService.deleteTicketById(id);
		
		return this.success(null);
	}
	
}
