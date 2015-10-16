package com.moma.trip.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.mapper.TicketMapper;
import com.moma.trip.po.Ticket;
import com.moma.trip.service.TicketService;

@Service
public class TicketServiceImpl implements TicketService {

	@Resource
	private TicketMapper ticketMapper;
	
	@Override
	public void saveTicket(Ticket ticket) {

		if(ticket == null)
			return;
		
		ticket.setTicketId(UUIDUtils.getUUID());
		
		ticketMapper.saveTicket(ticket);
		
	}

}
