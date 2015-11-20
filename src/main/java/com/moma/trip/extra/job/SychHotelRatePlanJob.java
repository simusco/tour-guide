package com.moma.trip.extra.job;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.moma.trip.extra.ctrip.HotelRequestService;
import com.moma.trip.po.Hotel;
import com.moma.trip.service.HotelService;

public class SychHotelRatePlanJob extends QuartzJobBean {

	private HotelRequestService hotelRequestService;
	
	private HotelService hotelService;

	@Override
	protected void executeInternal(JobExecutionContext context) throws JobExecutionException {

		try {
			Long s = new Date().getTime();
			System.out.println("start to sych..." + s);
			
			List<Hotel> hotelList = hotelService.getKnownHotelList();
			
			String startTime = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
			Calendar c = Calendar.getInstance();
			c.setTime(new Date());
			c.add(Calendar.DAY_OF_MONTH, 28);
			String endTime = new SimpleDateFormat("yyyy-MM-dd").format(c.getTime());
			
			hotelRequestService.sychHotelRatePlan(hotelList, startTime, endTime);
			
			Long e = new Date().getTime();
			System.out.println("end to sych...,take time : " + (e - s) + "ms");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public HotelRequestService getHotelRequestService() {
		return hotelRequestService;
	}

	public void setHotelRequestService(HotelRequestService hotelRequestService) {
		this.hotelRequestService = hotelRequestService;
	}
	
	public HotelService getHotelService() {
		return hotelService;
	}

	public void setHotelService(HotelService hotelService) {
		this.hotelService = hotelService;
	}

	public static void main(String[] args){
		
		String startTime = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		Calendar c = Calendar.getInstance();
		c.setTime(new Date());
		c.add(Calendar.DAY_OF_MONTH, 28);
		String endTime = new SimpleDateFormat("yyyy-MM-dd").format(c.getTime());
		
	}
	
}