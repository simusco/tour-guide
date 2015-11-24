package com.moma.trip.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.mapper.PaymentMapper;
import com.moma.trip.po.Order;
import com.moma.trip.po.Payment;
import com.moma.trip.service.OrderService;
import com.moma.trip.service.PaymentService;

@Service
public class PaymentServiceImpl implements PaymentService {

	@Resource
	private OrderService orderService;
	@Resource
	private PaymentMapper paymentMapper;
	
	@Transactional(propagation=Propagation.REQUIRED)
	@Override
	public void save(Payment payment) {

		Order order = orderService.getOrderByNo(payment.getOutTradeNo());
		if("UNPAY".equals(order.getStatus())){
			orderService.payed(order);
			payment.setPaymentId(UUIDUtils.getUUID());
			payment.setTradeTime(new Date());
			paymentMapper.save(payment);
		}
		
	}

}
