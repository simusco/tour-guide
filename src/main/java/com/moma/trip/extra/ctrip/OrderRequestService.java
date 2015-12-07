package com.moma.trip.extra.ctrip;

import java.util.List;

import com.moma.framework.ServiceException;
import com.moma.framework.extra.ctrip.dto.HotelRes;
import com.moma.framework.extra.ctrip.dto.SpotRes;
import com.moma.trip.po.Order;
import com.moma.trip.po.OrderDetail;
import com.moma.trip.po.OrderVisitor;

public interface OrderRequestService {

	//返回数组，0:酒店预定结果，1：门票预定结果
	public Object[] generOrder(Order order, List<OrderDetail> odlist, List<OrderVisitor> orderVisitors) throws Exception;

	public SpotRes generSpotOrder(Order order, List<OrderDetail> odlist, List<OrderVisitor> orderVisitors) throws Exception;
	
	public HotelRes generHotelOrder(Order order, List<OrderDetail> odlist, List<OrderVisitor> orderVisitors) throws Exception;

	public boolean cancelOrder(Order order) throws ServiceException;
	
	public boolean cancelSpotOrder(String spotResId, String uniqueId);
	
	public boolean cancelHotelOrder(String hotelResId, String uniqueId) throws Exception;

	public void payHotel(String returnUrl, String showUrl, String description, String paymentDescription, String orderID, int orderType);
	
}
