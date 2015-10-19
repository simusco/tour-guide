package com.moma.trip.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.Ticket;

@Repository
public interface TicketMapper {

	public void saveTicket(Ticket ticket);

	public List<Ticket> getTicketByActivityId(String activityPlanId);
	
	void deleteTicketById(String id);

}
