package com.moma.trip.extra.job;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.concurrent.CyclicBarrier;

import com.moma.trip.extra.ctrip.HotelRequestService;
import com.moma.trip.po.Hotel;
import com.moma.trip.service.HotelService;

public class SychHotelTask extends Thread {

	private CyclicBarrier barrier;
	private HotelRequestService hotelRequestService;
	private HotelService hotelService;
	
	public SychHotelTask(CyclicBarrier barrier, HotelRequestService hotelRequestService, HotelService hotelService){
		this.barrier = barrier;
		this.hotelRequestService = hotelRequestService;
		this.hotelService = hotelService;
	}
	
	public void run() {
		 
		try {
			Long s = new Date().getTime();
			System.out.println("开始同步酒店价格计划" + s);

			List<Hotel> hotelList = hotelService.getKnownHotelList();

			Calendar now = Calendar.getInstance();
			now.setTime(new Date());
			now.add(Calendar.DAY_OF_MONTH, 0);

			String startTime = new SimpleDateFormat("yyyy-MM-dd").format(now.getTime());
			Calendar c = Calendar.getInstance();
			c.setTime(new Date());
			c.add(Calendar.DAY_OF_MONTH, 28);
			String endTime = new SimpleDateFormat("yyyy-MM-dd").format(c.getTime());

			hotelRequestService.sychHotelRatePlan(hotelList, startTime, endTime);

			Long e = new Date().getTime();
			System.out.println("酒店价格计划同步结束 " + (e - s) + "ms");
			
			barrier.await();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
