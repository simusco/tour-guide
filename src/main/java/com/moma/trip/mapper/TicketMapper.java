package com.moma.trip.mapper;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.Ticket;
import com.moma.trip.po.TicketDetail;
import com.moma.trip.po.TicketPrice;

@Repository
public interface TicketMapper {

	public void saveTicket(Ticket ticket);

	public List<Ticket> getTicketByActivityId(String activityPlanId);
	
	void deleteTicketById(String id);

	public List<Ticket> getTicketList(String routeId, Integer year, Integer month, Integer day);

	public Ticket getTicketById(String ticketId);

	public List<TicketDetail> getTicketDetailList(String ticketId);

	public TicketDetail getTicketDetailById(String ticketDetailId);

	public void deleteTicketPrice(TicketPrice tp);

	public void saveTicketPrice(TicketPrice tp);

	public List<Ticket> getAllTicketList();

	public Double getTicketPrice(String ticketId, Date start, Date end);

	public void deleteTicketPriceByTicketId(String ticketId);

	public void updateTicketToLatest(BigDecimal price);

}
