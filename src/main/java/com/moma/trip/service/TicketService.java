package com.moma.trip.service;

import java.util.Date;
import java.util.List;

import com.moma.trip.po.Ticket;
import com.moma.trip.po.TicketDetail;
import com.moma.trip.po.TicketPrice;

public interface TicketService {

	void saveTicket(Ticket ticket);

	void deleteTicketById(String id);

	List<Ticket> getTicketList(String routeId, Integer year, Integer month, Integer day);
	
	Ticket getTicketById(String ticketId);

	List<TicketDetail> getTicketDetailList(String ticketId);

	TicketDetail getTicketDetailById(String ticketDetailId);

	void mantainTicketPrice(Ticket ticket, List<TicketPrice> arrayList);

	List<Ticket> getAllTicketList();

	Double getTicketPrice(String ticketId, Date start, Date end);

}
