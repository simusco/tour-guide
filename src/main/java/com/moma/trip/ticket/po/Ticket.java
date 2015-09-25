package com.moma.trip.ticket.po;

import java.io.Serializable;

public class Ticket implements Serializable {

	private String ticketId;
	private String ticketGroupId;
	private String name;
	private String detail;
	private Integer quantity;
	private String marketPrice; // 市场价格
	private String icon; // 套餐图标
	private String hostId; // 酒店、门票、车费、餐费
	private String hostType; // host类型

	public String getTicketId() {
		return ticketId;
	}

	public void setTicketId(String ticketId) {
		this.ticketId = ticketId;
	}

	public String getTicketGroupId() {
		return ticketGroupId;
	}

	public void setTicketGroupId(String ticketGroupId) {
		this.ticketGroupId = ticketGroupId;
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

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public String getMarketPrice() {
		return marketPrice;
	}

	public void setMarketPrice(String marketPrice) {
		this.marketPrice = marketPrice;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getHostId() {
		return hostId;
	}

	public void setHostId(String hostId) {
		this.hostId = hostId;
	}

	public String getHostType() {
		return hostType;
	}

	public void setHostType(String hostType) {
		this.hostType = hostType;
	}

}
