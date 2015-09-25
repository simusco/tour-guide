package com.moma.trip.scenicspot.po;

import java.math.BigDecimal;

import com.moma.trip.ticket.po.Ticket;

public class ScenicSpotTicket extends Ticket{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8072161574726559850L;
	private String ticketId;
	private String scenicSpotId;
	private BigDecimal price;

	public String getTicketId() {
		return ticketId;
	}

	public void setTicketId(String ticketId) {
		this.ticketId = ticketId;
	}

	public String getScenicSpotId() {
		return scenicSpotId;
	}

	public void setScenicSpotId(String scenicSpotId) {
		this.scenicSpotId = scenicSpotId;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

}
