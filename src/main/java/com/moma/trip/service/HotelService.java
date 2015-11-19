package com.moma.trip.service;

import java.util.Date;
import java.util.List;

import com.moma.framework.extra.ctrip.dto.HotelRatePlan;
import com.moma.trip.po.Hotel;
import com.moma.trip.po.HotelPrice;

public interface HotelService {

	public List<Hotel> getKnownHotelList();
	
	public void saveHotelRatePlan(List<HotelRatePlan> list);

	public List<HotelPrice> getHotelNewPrice(String string, String string2);

	public Double getHotelPrice(Date start, Date end, String code1, String code2);
	
}
