package com.moma.trip.book.ctrip.service;

public interface HotelRequestService {

	public void searchHotel(String hotelCityCode, String areaID, String hotelName, String hotelStarRate)
			throws Exception;

	public Object getHotelDescriptiveInfo() throws Exception;

	public Object getHotelRatePlan() throws Exception;

}
