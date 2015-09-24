package com.moma.trip.book.ctrip.service;

import java.security.NoSuchAlgorithmException;

import com.moma.trip.book.ctrip.service.impl.HotelRequestServiceImpl;

public class Test {

	public static void main(String[] args) throws NoSuchAlgorithmException, Exception {

		HotelRequestService service = new HotelRequestServiceImpl();
		//service.searchHotel("2", "112", "上海", "3");
		//service.getHotelRatePlan();
		service.getHotelDescriptiveInfo();
		
	}

}
