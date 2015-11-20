package com.moma.trip.extra.ctrip;

import java.util.List;

import com.moma.framework.extra.ctrip.dto.HotelAvail;
import com.moma.trip.po.Hotel;

public interface HotelRequestService {

	public void searchHotel(String hotelCityCode, String areaID, String hotelName, String hotelStarRate)
			throws Exception;

	public Object getHotelDescriptiveInfo() throws Exception;

	public HotelAvail hotelAvail(String hotelCode, String ratePlanCode, String start, String end, int quantity, String lateArrivalTime) throws Exception;

	public void sychHotelRatePlan(List<Hotel> hotelList, String startTime, String endTime) throws Exception;
	
}
