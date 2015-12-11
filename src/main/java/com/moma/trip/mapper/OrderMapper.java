package com.moma.trip.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.HotelDraw;
import com.moma.trip.po.Order;
import com.moma.trip.po.OrderDetail;
import com.moma.trip.po.OrderVisitor;
import com.moma.trip.po.SpotDraw;

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
	
	List<OrderDetail> getOrderDetailByOrderId(String orderId);

	Long getUnDrawOrderPageTotal(Map<String, Object> params);

	List<Order> getUnDrawOrderPageList(Map<String, Object> params);

	List<HotelDraw> getHotelDrawByOrderId(String orderId);

	List<SpotDraw> getSpotDrawByOrderId(String orderId);

	List<OrderVisitor> getOrderVisitors(String orderId);

	void updateOrderDraw(String orderId, String isDraw);

	void updateOrderDetailDraw(String orderDetailId, String idDraw, String third3partno);

}
