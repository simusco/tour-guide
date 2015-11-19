package com.moma.trip.service.impl;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.moma.framework.ServiceException;
import com.moma.framework.extra.ctrip.dto.HotelAvail;
import com.moma.framework.extra.ctrip.dto.SpotAvail;
import com.moma.framework.extra.taobao.api.internal.util.StringUtils;
import com.moma.framework.utils.RandomUtils;
import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.mapper.OrderMapper;
import com.moma.trip.po.Order;
import com.moma.trip.po.OrderDetail;
import com.moma.trip.po.OrderVisitor;
import com.moma.trip.po.Ticket;
import com.moma.trip.po.TicketDetail;
import com.moma.trip.service.HotelRequestService;
import com.moma.trip.service.OrderService;
import com.moma.trip.service.SpotRequestService;
import com.moma.trip.service.SpotService;
import com.moma.trip.service.TicketService;

@Service
public class OrderServiceImpl implements OrderService {

	@Resource
	private TicketService ticketService;
	@Resource
	private OrderMapper orderMapper;
	@Resource
	private SpotService spotService;
	@Resource
	private HotelRequestService hotelRequestService;
	@Resource
	private SpotRequestService spotRequestService;
	
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
		orderDetail.setCode1(ticketDetail.getCode1());
		orderDetail.setCode2(ticketDetail.getCode2());
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

	public void validateOrder(Order order){
		String start = order.getEntryTime();
		if(StringUtils.isEmpty(start)){
			throw new ServiceException("未填写订单开始时间");
		}
		
		if(StringUtils.isEmpty(order.getBookDay()) || !StringUtils.isNumeric(order.getBookDay())){
			throw new ServiceException("预定晚上数量填写有问题");
		}
		
		if(order.getQuantity() <= 0 || order.getQuantity() > 20){
			throw new ServiceException("套餐数量填写有问题");
		}
		
		try {
			Date d = new SimpleDateFormat("yyyy-MM-dd").parse(order.getEntryTime());
			Calendar c =Calendar.getInstance();
			c.setTime(d);
			c.add(Calendar.DAY_OF_MONTH, Integer.parseInt(order.getBookDay()) - 1);
			
			order.setEndTime(new SimpleDateFormat("yyyy-MM-dd").format(c.getTime()));
		} catch (ParseException e) {
			throw new ServiceException("预定时间有问题");
		}
	}
	
	public Double getPrice(Order order) {
		
		Double ticketPrice = null;
		validateOrder(order);
		
		try {
			Date start = new SimpleDateFormat("yyyy-MM-dd").parse(order.getEntryTime());
			Date end = new SimpleDateFormat("yyyy-MM-dd").parse(order.getEndTime());
			//单张票价格,如果预定好几天，酒店会多张，门票仅仅两张
			ticketPrice  = ticketService.getTicketPrice(order.getTicketId(), start, end);
		} catch (ParseException e) {
			throw new ServiceException("获取价格失败");
		}
		
		if(ticketPrice == null){
			throw new ServiceException("所选日期酒店或门票不可预定!");
		}
		
		return ticketPrice * order.getQuantity();
	}

	@Override
	public boolean avail(Order order) {

		boolean hotelFlag = false;
		boolean spotFlag = false;
		
		//基本验证
		validateOrder(order);
		
		Ticket ticket = ticketService.getTicketById(order.getTicketId());
		TicketDetail ticketDetail = ticketService.getTicketDetailById(order.getTicketDetailId());
		if(ticket == null || ticketDetail == null){
			throw new ServiceException("未找到你要预定的订单");
		}
		
		HotelAvail hotelAvail;
		try {
			hotelAvail = hotelRequestService.hotelAvail(
					ticketDetail.getCode1(), 
					ticketDetail.getCode2(),
					order.getEntryTime(), 
					order.getEndTime(), 
					order.getQuantity(), 
					order.getEntryTime() + "T21:00:00.000+08:00");
		} catch (Exception e) {
			throw new ServiceException("检查可用性失败");
		}
		
		try {
			List<TicketDetail> tdlist = ticketService.getTicketDetailList(ticket.getTicketId());
			
			Map<Boolean, Integer> passCount = new HashMap<Boolean, Integer>();
			for(int i=0;i<tdlist.size();i++){
				TicketDetail td = tdlist.get(i);
				if("SPOT".equals(td.getType())){
					String resourceId = td.getCode2();
					String useDate = order.getEndTime();
					Integer useQuantity = order.getQuantity();
					Double totalPrice = spotService.getSpotPrice(order.getEndTime(), order.getEndTime(), td.getCode1(), td.getCode2());
					
					SpotAvail spotAvail = spotRequestService.ticketOrderCanBooking(
							Integer.getInteger(resourceId), 
							useDate, 
							useQuantity, 
							totalPrice.intValue());
					
					if(spotAvail == null || !spotAvail.getCode()){
						Integer count = passCount.get(false);
						if(count == null){
							passCount.put(false, 1);
						}else{
							passCount.put(false, ++count);
						}
					}
				}
			}
			
			spotFlag = passCount.get(false) == null ? true : false;
		} catch (Exception e) {
			throw new ServiceException("检查可用性失败");
		}
		
		if("AvailableForSale".equals(hotelAvail.getAvailabilityStatus())){
			hotelFlag = true;
		}
		
		return spotFlag && hotelFlag;
	}

}
