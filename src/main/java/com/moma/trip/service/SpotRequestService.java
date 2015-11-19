package com.moma.trip.service;

import java.util.List;

import com.moma.framework.extra.ctrip.dto.SpotAvail;
import com.moma.trip.po.Spot;

public interface SpotRequestService {

	void sychSpot(List<Spot> spotList, String startTime, String endTime);

	public SpotAvail ticketOrderCanBooking(
			Integer resourceId, 
			String useDate, 
			Integer useQuantity,
			Integer totalPrice);
	
}
