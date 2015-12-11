package com.moma.trip.extra.job;

import java.util.concurrent.CyclicBarrier;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.moma.trip.extra.ctrip.HotelRequestService;
import com.moma.trip.extra.ctrip.SpotRequestService;
import com.moma.trip.service.HotelService;
import com.moma.trip.service.SpotService;
import com.moma.trip.service.TicketService;

public class SychCtripJob extends QuartzJobBean {

	private HotelRequestService hotelRequestService;
	private SpotRequestService spotRequestService;
	private HotelService hotelService;
	private SpotService spotService;
	private TicketService ticketService;

	@Override
	protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
		
		CyclicBarrier barrier = new CyclicBarrier(2, new MantainTicketPriceTask(ticketService, hotelService, spotService));
		new SychHotelTask(barrier, hotelRequestService, hotelService).start();
		new SychSpotTask(barrier, spotRequestService, spotService).start();
		
	}

	public HotelRequestService getHotelRequestService() {
		return hotelRequestService;
	}

	public void setHotelRequestService(HotelRequestService hotelRequestService) {
		this.hotelRequestService = hotelRequestService;
	}

	public SpotRequestService getSpotRequestService() {
		return spotRequestService;
	}

	public void setSpotRequestService(SpotRequestService spotRequestService) {
		this.spotRequestService = spotRequestService;
	}

	public HotelService getHotelService() {
		return hotelService;
	}

	public void setHotelService(HotelService hotelService) {
		this.hotelService = hotelService;
	}

	public SpotService getSpotService() {
		return spotService;
	}

	public void setSpotService(SpotService spotService) {
		this.spotService = spotService;
	}

	public TicketService getTicketService() {
		return ticketService;
	}

	public void setTicketService(TicketService ticketService) {
		this.ticketService = ticketService;
	}
	
}
