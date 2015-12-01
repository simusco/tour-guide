package com.moma.trip.service.impl;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.mapper.ActivityMapper;
import com.moma.trip.mapper.TicketMapper;
import com.moma.trip.po.Ticket;
import com.moma.trip.po.TicketDetail;
import com.moma.trip.po.TicketPrice;
import com.moma.trip.service.HotelService;
import com.moma.trip.service.SpotService;
import com.moma.trip.service.TicketService;

@Service("ticketService")
public class TicketServiceImpl implements TicketService {

	@Resource
	private ActivityMapper activityMapper;
	@Resource
	private TicketMapper ticketMapper;
	@Resource
	private SpotService spotService;
	@Resource
	private HotelService hotelService;
	
	@Override
	public void saveTicket(Ticket ticket) {

		if(ticket == null)
			return;
		
		ticket.setTicketId(UUIDUtils.getUUID());
		
		ticketMapper.saveTicket(ticket);
		
	}

	@Override
	public void deleteTicketById(String id) {
		ticketMapper.deleteTicketById(id);
	}

	@Override
	public List<Ticket> getTicketList(String routeId, Integer year, Integer month, Integer day) {
		
		return ticketMapper.getTicketList(routeId, year, month, day);
	}

	@Override
	public Ticket getTicketById(String ticketId) {

		return ticketMapper.getTicketById(ticketId);
	}

	@Override
	public List<TicketDetail> getTicketDetailList(String ticketId) {

		if(ticketId == null)
			return null;
		
		
		return ticketMapper.getTicketDetailList(ticketId);
	}

	@Override
	public TicketDetail getTicketDetailById(String ticketDetailId) {

		if(ticketDetailId == null)
			return null;
		
		return ticketMapper.getTicketDetailById(ticketDetailId);
	}

	@Transactional(propagation=Propagation.REQUIRED)
	@Override
	public void mantainTicketPrice(Ticket ticket, List<TicketPrice> arrayList) {
		if(arrayList == null)
			return;
		
		ticketMapper.deleteTicketPriceByTicketId(ticket.getTicketId());
		
		for(Iterator<TicketPrice> it = arrayList.iterator();it.hasNext();){
			TicketPrice tp = it.next();
			tp.setTicketPriceId(UUIDUtils.getUUID());
			tp.setEntryTime(new Timestamp(new Date().getTime()));
			Calendar c = Calendar.getInstance();
			c.set(
				Integer.parseInt(tp.getYear()), 
				Integer.parseInt(tp.getMonth()) - 1, 
				Integer.parseInt(tp.getDay())
			);
			tp.setDate(c.getTime());
			ticketMapper.saveTicketPrice(tp);
		}
		
		Collections.sort(arrayList);
		
		TicketPrice lessPrice = arrayList.isEmpty() ? null : arrayList.get(0);
		if(lessPrice != null){
			//获取最小价格
			activityMapper.updateActivityPriceToLatest(ticket.getActivityId(), lessPrice.getPrice(), lessPrice.getMarketPrice());
		}
	}

	@Override
	public List<Ticket> getAllTicketList() {

		return ticketMapper.getAllTicketList();
	}

	@Override
	public Double getTicketPrice(String ticketId, Date start, Date end) {

		List<TicketDetail> tdlist = ticketMapper.getTicketDetailList(ticketId);
		
		BigDecimal price = new BigDecimal("0.0");
		for(int i=0;i<tdlist.size();i++){
			TicketDetail td = tdlist.get(i);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			if("SPOT".equals(td.getType())){
				Double spotPrice = spotService.getSpotPrice(sdf.format(end), sdf.format(end), td.getCode1(), td.getCode2());
				price = price.add(new BigDecimal(spotPrice));
			}
			
			if("HOTEL".equals(td.getType())){
				Double hotelPrice =  hotelService.getHotelPrice(start, end, td.getCode1(), td.getCode2());
				price = price.add(new BigDecimal(hotelPrice));
			}
		}
		
		return price.doubleValue();
	}

}
