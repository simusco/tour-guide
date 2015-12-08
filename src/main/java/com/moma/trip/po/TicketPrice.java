package com.moma.trip.po;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;

public class TicketPrice implements Comparable<TicketPrice>{

	private String ticketPriceId;
	private String ticketId;
	private BigDecimal price;
	private BigDecimal marketPrice;
	private String year;
	private String month;
	private String day;
	private Date date;
	private Timestamp entryTime;
	private String groupCode;

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

	public Timestamp getEntryTime() {
		return entryTime;
	}

	public void setEntryTime(Timestamp entryTime) {
		this.entryTime = entryTime;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public BigDecimal getMarketPrice() {
		return marketPrice;
	}

	public void setMarketPrice(BigDecimal marketPrice) {
		this.marketPrice = marketPrice;
	}

	@Override
	public int compareTo(TicketPrice o) {
		
		if(this.getPrice() == null)
			return -1;
					
		if(o == null || o.getPrice() == null)
			return 1;
		
		return this.getPrice().compareTo(o.getPrice());
	}

	public String getGroupCode() {
		return groupCode;
	}

	public void setGroupCode(String groupCode) {
		this.groupCode = groupCode;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((date == null) ? 0 : date.hashCode());
		result = prime * result + ((day == null) ? 0 : day.hashCode());
		result = prime * result + ((groupCode == null) ? 0 : groupCode.hashCode());
		result = prime * result + ((month == null) ? 0 : month.hashCode());
		result = prime * result + ((ticketPriceId == null) ? 0 : ticketPriceId.hashCode());
		result = prime * result + ((year == null) ? 0 : year.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		TicketPrice other = (TicketPrice) obj;
		if (date == null) {
			if (other.date != null)
				return false;
		} else if (!date.equals(other.date))
			return false;
		if (day == null) {
			if (other.day != null)
				return false;
		} else if (!day.equals(other.day))
			return false;
		if (groupCode == null) {
			if (other.groupCode != null)
				return false;
		} else if (!groupCode.equals(other.groupCode))
			return false;
		if (month == null) {
			if (other.month != null)
				return false;
		} else if (!month.equals(other.month))
			return false;
		if (ticketPriceId == null) {
			if (other.ticketPriceId != null)
				return false;
		} else if (!ticketPriceId.equals(other.ticketPriceId))
			return false;
		if (year == null) {
			if (other.year != null)
				return false;
		} else if (!year.equals(other.year))
			return false;
		return true;
	}

}
