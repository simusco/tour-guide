package com.moma.trip.service;

import java.util.List;

import com.moma.framework.ServiceException;
import com.moma.framework.pagination.Pagination;
import com.moma.trip.po.HotelDraw;
import com.moma.trip.po.Order;
import com.moma.trip.po.OrderDraw;
import com.moma.trip.po.OrderVisitor;
import com.moma.trip.po.SpotDraw;

public interface OrderService {

	String save(Order order) throws Exception;

	List<Order> getOrderList(String string, String userId);

	Double getPrice(Order order);

	boolean avail(Order order);

	Order getOrderById(String orderId, String userId);

	Order getOrderByNo(String orderNo, String userId);

	void cancel(String orderNo, String userId) throws ServiceException;

	Order getOrderByNo(String outTradeNo);

	void payed(Order order);

	Pagination getUnDrawOrders(Pagination pagination);

	List<HotelDraw> getHotelDrawByOrderId(String orderId);

	List<SpotDraw> getSpotDrawByOrderId(String orderId);

	List<OrderVisitor> getOrderVisitors(String orderId);

	void updateOrderDraw(OrderDraw orderDraw);

}
