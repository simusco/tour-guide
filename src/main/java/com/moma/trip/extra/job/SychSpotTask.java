package com.moma.trip.extra.job;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.concurrent.CyclicBarrier;

import com.moma.trip.extra.ctrip.SpotRequestService;
import com.moma.trip.po.Spot;
import com.moma.trip.service.SpotService;

public class SychSpotTask extends Thread {

	private CyclicBarrier barrier;
	private SpotRequestService spotRequestService;
	private SpotService spotService;
	
	public SychSpotTask(CyclicBarrier barrier, SpotRequestService spotRequestService, SpotService spotService){
		this.barrier = barrier;
		this.spotRequestService = spotRequestService;
		this.spotService = spotService;
	}
	
	 public void run() {
		 try {
			Long s = new Date().getTime();
			System.out.println("开始同步携程名票信息" + s);

			List<Spot> spotList = spotService.getKnownSpotList();

			Calendar now = Calendar.getInstance();
			now.setTime(new Date());
			now.add(Calendar.DAY_OF_MONTH, 0);

			String startTime = new SimpleDateFormat("yyyy-MM-dd").format(now.getTime());
			Calendar c = Calendar.getInstance();
			c.setTime(new Date());
			c.add(Calendar.DAY_OF_MONTH, 28);
			String endTime = new SimpleDateFormat("yyyy-MM-dd").format(c.getTime());

			spotRequestService.sychSpot(spotList, startTime, endTime);

			Long e = new Date().getTime();
			System.out.println("门票信息同步结束 " + (e - s) + "ms");
			
			barrier.await();
		} catch (Exception e) {
			e.printStackTrace();
		}
	 }
	
}
