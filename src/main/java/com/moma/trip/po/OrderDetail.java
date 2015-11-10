package com.moma.trip.po;

import java.math.BigDecimal;

public class OrderDetail {

	private String orderDetailId;
	private String orderId;
	private String ticketId;
	private String ticketName;
	private String ticketDetailId;
	private String ticketDetailName;
	private BigDecimal price;
	private BigDecimal marketPrice;
	private String type;
	private String code;

	public String getOrderDetailId() {
		return orderDetailId;
	}

	public void setOrderDetailId(String orderDetailId) {
		this.orderDetailId = orderDetailId;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getTicketId() {
		return ticketId;
	}

	public void setTicketId(String ticketId) {
		this.ticketId = ticketId;
	}

	public String getTicketName() {
		return ticketName;
	}

	public void setTicketName(String ticketName) {
		this.ticketName = ticketName;
	}

	public String getTicketDetailId() {
		return ticketDetailId;
	}

	public void setTicketDetailId(String ticketDetailId) {
		this.ticketDetailId = ticketDetailId;
	}

	public String getTicketDetailName() {
		return ticketDetailName;
	}

	public void setTicketDetailName(String ticketDetailName) {
		this.ticketDetailName = ticketDetailName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
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

}
