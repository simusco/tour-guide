package com.moma.trip.price.po;

import java.io.Serializable;

public class PricePlan implements Serializable{

	private String pricePlanId;
	private String ticketGroupId;
	private String synchTime;// 同步时间

	public String getPricePlanId() {
		return pricePlanId;
	}

	public void setPricePlanId(String pricePlanId) {
		this.pricePlanId = pricePlanId;
	}

	public String getTicketGroupId() {
		return ticketGroupId;
	}

	public void setTicketGroupId(String ticketGroupId) {
		this.ticketGroupId = ticketGroupId;
	}

	public String getSynchTime() {
		return synchTime;
	}

	public void setSynchTime(String synchTime) {
		this.synchTime = synchTime;
	}

}
