package com.moma.trip.po;

import java.io.Serializable;

//mc_price_plan
public class PricePlan implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2449141213452083589L;
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
