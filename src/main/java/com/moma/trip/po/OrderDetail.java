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
	private String code1;
	private String code2;
	private Integer quantity;
	private String isPay;
	private String isDisplay;
	private String roomType;
	private String bedType;
	
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

	public String getCode1() {
		return code1;
	}

	public void setCode1(String code1) {
		this.code1 = code1;
	}

	public String getCode2() {
		return code2;
	}

	public void setCode2(String code2) {
		this.code2 = code2;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public String getIsPay() {
		return isPay;
	}

	public void setIsPay(String isPay) {
		this.isPay = isPay;
	}

	public String getIsDisplay() {
		return isDisplay;
	}

	public void setIsDisplay(String isDisplay) {
		this.isDisplay = isDisplay;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public String getBedType() {
		return bedType;
	}

	public void setBedType(String bedType) {
		this.bedType = bedType;
	}

}
