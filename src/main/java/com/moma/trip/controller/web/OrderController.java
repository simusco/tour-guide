package com.moma.trip.controller.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.Order;
import com.moma.trip.po.Ticket;
import com.moma.trip.po.TicketDetail;
import com.moma.trip.service.OrderService;
import com.moma.trip.service.TicketService;

@Scope(value="prototype")
@Controller
@RequestMapping("/web/v1/order")
public class OrderController  extends RestfulController {

	@Resource
	private TicketService ticketService;
	
	@Resource
	private OrderService orderService;
	
	@RequestMapping(value="/generate.html",method=RequestMethod.GET)
	public ModelAndView generate(String ticketId, String ticketTime){
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(ticketTime == null || "".equals(ticketTime.trim())){
			ticketTime = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		}
		
		Ticket ticket = ticketService.getTicketById(ticketId);
		if(ticket == null)
			return new ModelAndView("error");
		
		List<TicketDetail> ticketDetailList = ticketService.getTicketDetailList(ticketId);
		map.put("ticket", ticket);
		map.put("ticketDetailList", ticketDetailList);
		map.put("ticketTime", ticketTime);
		
		return new ModelAndView("order-generate", map);
	}
	
	@RequestMapping(value="/generate.html",method=RequestMethod.POST)
	@ResponseBody
	public byte[] generate(@RequestBody Order order){
		
		//保存mc_order
		//保存mc_order_detail
		//保存mc_order_visitor
		String orderId = orderService.save(order);
		
		return null;
	}
	
	@RequestMapping(value="/payment.html",method=RequestMethod.POST)
	public String payment(){
		
		
		
		return "";
	}
	
}
