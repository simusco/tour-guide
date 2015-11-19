package com.moma.trip.controller.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
import com.moma.trip.po.User;
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
	public byte[] generate(@RequestBody Order order, HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();

		User user = (User) request.getSession().getAttribute(User.LOGIN_USER);
		if(user == null){
			//TODO 进入登陆页面
			return toJSONBytes(unlogin());
		}
		
		try{
			//这里需要实现订单可定性检查，不成功给予用户提示
			//1.检查酒店可定性
			//2.检查门票可定性
			//--检查用户提交的订单金额是否等于ctrip返回的金额
			boolean flag = orderService.avail(order);
			
			//3.不可定提示
			if(!flag){
				//goto 生成订单失败
				map.put("flag", false);
				map.put("msg", "套餐已经被预定完。");
			}else{
				//4.可定，生成本系统订单，并跳转到支付界面
				//5.本系统订单状态--未支付
				order.setUserId(user.getUserId());
				map.put("flag", true);
				map.put("orderId", orderService.save(order));
			}
		}catch(Exception e){
			e.printStackTrace();
			//生成订单失败
			map.put("flag", false);
			map.put("msg", "订单生成失败，请重新尝试.");
		}
		
		return toJSONBytes(map);
	}
	
	@RequestMapping(value="/payment.html",method=RequestMethod.POST)
	public String payment(){
		
		//1.接受用户支付
		
		
		//2.检查支付成功否，成功go to 3
		//3.更新订单状态到已支付
	
		//后台开始与携程交互
		//4.根据本系统order id, 提交携程生成门票和酒店订单。
		//5.支付携程订单
		//6.确认携程支付成功否
		//7.不成功，获取原因，开始退回用户订单。
		//8.通知用户订单被退回
		
		return "";
	}
	
	@RequestMapping(value="/price.html",method=RequestMethod.POST)
	@ResponseBody
	public byte[] price(@RequestBody Order order, HttpServletRequest request){

		Map<String, Object> map = new HashMap<String, Object>();
		try{
			Double price = orderService.getPrice(order);
			
			map.put("price", price);
			map.put("flag", true);
		}catch(Exception e){
			map.put("flag", false);
			map.put("msg", e.getMessage());
		}
		
		return toJSONBytes(map);
	}
	
}
