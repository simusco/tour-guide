package com.moma.trip.ticket.po;

import java.io.Serializable;
import java.math.BigDecimal;

public class TicketGroup implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6385337855787543105L;
	private String ticketGroupId;
	private String activityId;// 套餐所属路线/活动
	private String pricePlanId;// 针对本套餐的价格计划
	private String name; // 套餐组名称
	private BigDecimal ticketPrice; // 票价
	private String marketPrice; // 市场价格

	public String getTicketGroupId() {
		return ticketGroupId;
	}

	public void setTicketGroupId(String ticketGroupId) {
		this.ticketGroupId = ticketGroupId;
	}

	public String getActivityId() {
		return activityId;
	}

	public void setActivityId(String activityId) {
		this.activityId = activityId;
	}

	public String getPricePlanId() {
		return pricePlanId;
	}

	public void setPricePlanId(String pricePlanId) {
		this.pricePlanId = pricePlanId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigDecimal getTicketPrice() {
		return ticketPrice;
	}

	public void setTicketPrice(BigDecimal ticketPrice) {
		this.ticketPrice = ticketPrice;
	}

	public String getMarketPrice() {
		return marketPrice;
	}

	public void setMarketPrice(String marketPrice) {
		this.marketPrice = marketPrice;
	}

}
