package com.moma.trip.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.Order;
import com.moma.trip.po.OrderDetail;
import com.moma.trip.po.OrderVisitor;

@Repository
public interface OrderMapper {

	void saveOrder(Order order);

	void saveOrderDetail(OrderDetail orderDetail);

	void saveOrderVisitor(OrderVisitor ov);

	List<Order> getOrderList(String status, String userId);

	Order getOrderById(String orderId);

	Order getOrderByNo(String orderNo);

	void cancelOrder(Order order);

	void payed(Order order);

}
