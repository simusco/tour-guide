package com.moma.trip.mapper;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.Hotel;
import com.moma.trip.po.HotelPrice;

@Repository
public interface HotelMapper {

	Hotel getHotel(String hotelCode, String ratePlanCode);

	void deleteHotelPrice(String hotelId);

	void saveHotelPrice(HotelPrice hotelPrice);
	
	List<Hotel> getKnownHotelList();

	List<HotelPrice> getHotelNewPrice(String code1, String code2);

	Double getHotelPrice(Date start, Date end, String code1, String code2);
	
}
