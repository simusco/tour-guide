package com.moma.trip.po;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public class Ticket implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8895392183694342600L;
	private String ticketId;
	private String activityId;
	private String name;
	private String detail;
	private String icon; // 套餐图标
	private String hotelCode;
	private String spotCode;
	private Date sychtime;
	private BigDecimal price;
	private BigDecimal marketPrice;
	private List<TicketDetail> ticketDetailList;
	private String buyPolicy;
	private String cancelPolicy;

	public String getTicketId() {
		return ticketId;
	}

	public void setTicketId(String ticketId) {
		this.ticketId = ticketId;
	}

	public String getActivityId() {
		return activityId;
	}

	public void setActivityId(String activityId) {
		this.activityId = activityId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getHotelCode() {
		return hotelCode;
	}

	public void setHotelCode(String hotelCode) {
		this.hotelCode = hotelCode;
	}

	public String getSpotCode() {
		return spotCode;
	}

	public void setSpotCode(String spotCode) {
		this.spotCode = spotCode;
	}

	public Date getSychtime() {
		return sychtime;
	}

	public void setSychtime(Date sychtime) {
		this.sychtime = sychtime;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getMarketPrice() {
		return marketPrice;
	}

	public void setMarketPrice(BigDecimal marketPrice) {
		this.marketPrice = marketPrice;
	}

	public List<TicketDetail> getTicketDetailList() {
		return ticketDetailList;
	}

	public void setTicketDetailList(List<TicketDetail> ticketDetailList) {
		this.ticketDetailList = ticketDetailList;
	}

	public String getBuyPolicy() {
		return buyPolicy;
	}

	public void setBuyPolicy(String buyPolicy) {
		this.buyPolicy = buyPolicy;
	}

	public String getCancelPolicy() {
		return cancelPolicy;
	}

	public void setCancelPolicy(String cancelPolicy) {
		this.cancelPolicy = cancelPolicy;
	}

}
