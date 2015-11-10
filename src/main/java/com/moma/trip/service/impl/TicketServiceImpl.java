package com.moma.trip.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.mapper.TicketMapper;
import com.moma.trip.po.Ticket;
import com.moma.trip.po.TicketDetail;
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

}
