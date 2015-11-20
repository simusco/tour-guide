package com.moma.trip.extra.job;

import java.security.NoSuchAlgorithmException;

import com.moma.trip.extra.ctrip.HotelRequestService;
import com.moma.trip.extra.ctrip.impl.HotelRequestServiceImpl;

public class Test {

	public static void main(String[] args) throws NoSuchAlgorithmException, Exception {

		HotelRequestService service = new HotelRequestServiceImpl();
		//service.searchHotel("2", "112", "上海", "3");
		//service.getHotelDescriptiveInfo();
		//service.hotelAvail("16100", "137387", "2015-11-14","2015-11-15", 2, "2015-11-14T21:00:00.000+08:00");
	}

}
