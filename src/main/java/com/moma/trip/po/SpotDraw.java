package com.moma.trip.po;

import java.math.BigDecimal;
import java.util.Date;

public class SpotDraw {

	private String orderDetailId;
	private String scenicId;
	private String productId;
	private String ticketId;
	private String spotName;
	private BigDecimal price;
	private Integer quantity;
	private String spotTime;
	private String third3partno;
	private String isDraw;

	public String getScenicId() {
		return scenicId;
	}

	public void setScenicId(String scenicId) {
		this.scenicId = scenicId;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getTicketId() {
		return ticketId;
	}

	public void setTicketId(String ticketId) {
		this.ticketId = ticketId;
	}

	public String getSpotName() {
		return spotName;
	}

	public void setSpotName(String spotName) {
		this.spotName = spotName;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public String getSpotTime() {
		return spotTime;
	}

	public void setSpotTime(String spotTime) {
		this.spotTime = spotTime;
	}

	public String getThird3partno() {
		return third3partno;
	}

	public void setThird3partno(String third3partno) {
		this.third3partno = third3partno;
	}

	public String getIsDraw() {
		return isDraw;
	}

	public void setIsDraw(String isDraw) {
		this.isDraw = isDraw;
	}

	public String getOrderDetailId() {
		return orderDetailId;
	}

	public void setOrderDetailId(String orderDetailId) {
		this.orderDetailId = orderDetailId;
	}

}
