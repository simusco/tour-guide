package com.moma.trip.soap.ctrip;

import java.security.NoSuchAlgorithmException;

import com.moma.trip.soap.ctrip.service.HotelRequestService;
import com.moma.trip.soap.ctrip.service.impl.HotelRequestServiceImpl;

public class Test {

	public static void main(String[] args) throws NoSuchAlgorithmException, Exception {

		HotelRequestService service = new HotelRequestServiceImpl();
		//service.searchHotel("2", "112", "上海", "3");
		//service.getHotelRatePlan();
		service.getHotelDescriptiveInfo();
		
	}

}
