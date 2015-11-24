package com.moma.trip.mapper;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.Payment;

@Repository
public interface PaymentMapper {

	void save(Payment payment);

}
