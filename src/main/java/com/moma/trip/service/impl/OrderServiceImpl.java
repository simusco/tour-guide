package com.moma.trip.service.impl;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.moma.framework.ServiceException;
import com.moma.framework.utils.RandomUtils;
import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.mapper.OrderMapper;
import com.moma.trip.po.Order;
import com.moma.trip.po.OrderDetail;
import com.moma.trip.po.OrderVisitor;
import com.moma.trip.po.Ticket;
import com.moma.trip.po.TicketDetail;
import com.moma.trip.service.OrderService;
import com.moma.trip.service.TicketService;

@Service
public class OrderServiceImpl implements OrderService {

	@Resource
	private TicketService ticketService;
	
	@Resource
	private OrderMapper orderMapper;
	
	@Transactional(propagation=Propagation.REQUIRED)
	@Override
	public String save(Order order) {
		// TODO Auto-generated method stub
		
		order.setOrderId(UUIDUtils.getUUID());
		order.setCreateTime(new Date());
		order.setIsPay("N");
		order.setStatus("UNPAY");//unpay/payed/cancel
		
		Ticket ticket = ticketService.getTicketById(order.getTicketId());
		if(ticket == null)
			throw new ServiceException("不能找到你所选择的套餐！");
		
		String ticketDetailId = order.getTicketDetailId();
		TicketDetail ticketDetail = ticketService.getTicketDetailById(ticketDetailId);
		if(ticketDetail == null)
			throw new ServiceException("不能找到你所选择的套餐！");
		
		OrderDetail orderDetail = new OrderDetail();
		orderDetail.setOrderDetailId(UUIDUtils.getUUID());
		orderDetail.setOrderId(order.getOrderId());
		orderDetail.setCode(ticketDetail.getCode());
		orderDetail.setMarketPrice(BigDecimal.valueOf(0));
		orderDetail.setPrice(BigDecimal.valueOf(0));
		orderDetail.setTicketDetailId(ticketDetailId);
		orderDetail.setTicketDetailName(ticketDetail.getName());
		orderDetail.setTicketId(order.getTicketId());
		orderDetail.setTicketName(ticket.getName());
		orderDetail.setType(ticketDetail.getType());
		
		orderMapper.saveOrderDetail(orderDetail);
		
		List<OrderVisitor> orderVisitors = order.getOrderVisitors();
		if(orderVisitors == null || orderVisitors.size() == 0)
			throw new ServiceException("无联系人信息！");
		
		for(int i=0;i<orderVisitors.size();i++){
			OrderVisitor ov = orderVisitors.get(i);
			ov.setOrderVisitorId(UUIDUtils.getUUID());
			ov.setOrderId(order.getOrderId());
			
			orderMapper.saveOrderVisitor(ov);
		}
		
		order.setTicketIcon(ticket.getIcon());
		order.setTicketName(ticket.getName());
		order.setTicketDesc(ticketDetail.getDescription());
		
		try {
			Date d = new SimpleDateFormat("yyyy-MM-dd").parse(order.getEntryTime());
			Calendar c =Calendar.getInstance();
			c.setTime(d);
			c.add(Calendar.DAY_OF_MONTH, Integer.parseInt(order.getBookDay()));
			
			order.setEndTime(new SimpleDateFormat("yyyy-MM-dd").format(c.getTime()));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		String orderNo = new Date().getTime() + "" + RandomUtils.getRandom(1000000, 9999999);
		order.setOrderNo(orderNo);
		
		orderMapper.saveOrder(order);
		
		return order.getOrderId();
	}

	@Override
	public List<Order> getOrderList(String status, String userId) {

		List<Order> orderList =  orderMapper.getOrderList(status, userId);
		
		return orderList;
	}

}
