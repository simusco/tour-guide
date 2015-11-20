package com.moma.trip.extra.ctrip;

import java.util.List;

import com.moma.trip.po.Order;
import com.moma.trip.po.OrderDetail;
import com.moma.trip.po.OrderVisitor;

public interface OrderRequestService {


	public void generOrder(Order order, List<OrderDetail> odlist, List<OrderVisitor> orderVisitors) throws Exception;
	
}
