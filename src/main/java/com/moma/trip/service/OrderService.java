package com.moma.trip.service;

import java.util.List;

import com.moma.trip.po.Order;

public interface OrderService {

	String save(Order order);

	List<Order> getOrderList(String string, String userId);

	Double getPrice(Order order);

	boolean avail(Order order);

}
