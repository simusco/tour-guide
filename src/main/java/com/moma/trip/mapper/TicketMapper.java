package com.moma.trip.mapper;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.Ticket;

@Repository
public interface TicketMapper {

	public void saveTicket(Ticket ticket);

}
