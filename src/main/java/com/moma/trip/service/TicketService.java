package com.moma.trip.service;

import java.util.List;

import com.moma.trip.po.Ticket;

public interface TicketService {

	void saveTicket(Ticket ticket);

	void deleteTicketById(String id);

	List<Ticket> getTicketList(String routeId, Integer year, Integer month, Integer day);

}
