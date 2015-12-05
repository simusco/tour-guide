package com.moma.trip.service;

import java.util.List;

import com.moma.framework.ServiceException;
import com.moma.trip.po.Order;

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

}
