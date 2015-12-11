package com.moma.trip.controller.admin;

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

import com.moma.framework.pagination.Pagination;
import com.moma.framework.web.WebResult;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.HotelDraw;
import com.moma.trip.po.OrderDraw;
import com.moma.trip.po.OrderVisitor;
import com.moma.trip.po.SpotDraw;
import com.moma.trip.service.OrderService;

/**
 * 订单出票管理功能。
 * @author wolaiye-moma
 *
 */

@Scope(value="prototype")
@Controller
@RequestMapping("/orderDraw")
public class OrderDrawController extends RestfulController {

	@Resource
	private OrderService orderService;
	
	@RequestMapping(value="/query",method=RequestMethod.GET)
	@ResponseBody
	public WebResult query(OrderDraw orderDraw, Integer currPage) {
		
		Pagination pagination = new Pagination();
		
		pagination.setCurrPage(currPage);
		pagination.put("telephone", orderDraw.getTelephone());
		pagination.put("orderNo", orderDraw.getOrderNo());
		pagination.put("isDraw", orderDraw.getIsDraw());
		
		Pagination orders = orderService.getUnDrawOrders(pagination);
	
		return success(orders);
	}
	
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	@ResponseBody
	public WebResult detail(String orderId) {
		
		
		List<OrderVisitor> visitors = orderService.getOrderVisitors(orderId);
		List<HotelDraw> hotels = orderService.getHotelDrawByOrderId(orderId);
		List<SpotDraw> spots = orderService.getSpotDrawByOrderId(orderId);
		
		Map<String, List<?>> map = new HashMap<String, List<?>>();
		map.put("hotels", hotels);
		map.put("spots", spots);
		map.put("visitors", visitors);
		
		return success(map);
	}
	
	
	@RequestMapping(method=RequestMethod.POST)
	@ResponseBody
	public WebResult update(@RequestBody OrderDraw orderDraw) {
		
		System.out.println(orderDraw);
		try{
			orderService.updateOrderDraw(orderDraw);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return success(null);
	}
}
