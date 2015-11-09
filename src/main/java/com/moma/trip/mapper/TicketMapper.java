package com.moma.trip.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.Ticket;
import com.moma.trip.po.TicketDetail;

@Repository
public interface TicketMapper {

	public void saveTicket(Ticket ticket);

	public List<Ticket> getTicketByActivityId(String activityPlanId);
	
	void deleteTicketById(String id);

	public List<Ticket> getTicketList(String routeId, Integer year, Integer month, Integer day);

	public Ticket getTicketById(String ticketId);

	public List<TicketDetail> getTicketDetailList(String ticketId);

}
