package com.moma.trip.po;

import java.math.BigDecimal;

public class TicketPrice {

	private String ticketPriceId;
	private String ticketId;
	private BigDecimal price;
	private String year;
	private String month;
	private String day;

	public String getTicketPriceId() {
		return ticketPriceId;
	}

	public void setTicketPriceId(String ticketPriceId) {
		this.ticketPriceId = ticketPriceId;
	}

	public String getTicketId() {
		return ticketId;
	}

	public void setTicketId(String ticketId) {
		this.ticketId = ticketId;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

}
