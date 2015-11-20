package com.moma.trip.extra.job;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.moma.trip.extra.ctrip.SpotRequestService;
import com.moma.trip.po.Spot;
import com.moma.trip.service.SpotService;

public class SychSpotJob extends QuartzJobBean {

	private SpotRequestService spotRequestService;

	private SpotService spotService;

	@Override
	protected void executeInternal(JobExecutionContext context) throws JobExecutionException {

		try {
			Long s = new Date().getTime();
			System.out.println("start to sych..." + s);

			List<Spot> spotList = spotService.getKnownSpotList();

			String startTime = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
			Calendar c = Calendar.getInstance();
			c.setTime(new Date());
			c.add(Calendar.DAY_OF_MONTH, 28);
			String endTime = new SimpleDateFormat("yyyy-MM-dd").format(c.getTime());

			spotRequestService.sychSpot(spotList, startTime, endTime);

			Long e = new Date().getTime();
			System.out.println("end to sych...,take time : " + (e - s) + "ms");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public SpotRequestService getSpotRequestService() {
		return spotRequestService;
	}

	public void setSpotRequestService(SpotRequestService spotRequestService) {
		this.spotRequestService = spotRequestService;
	}

	public SpotService getSpotService() {
		return spotService;
	}

	public void setSpotService(SpotService spotService) {
		this.spotService = spotService;
	}

}