package com.moma.trip.po;

import java.util.ArrayList;
import java.util.List;

public class OrderDraw {

	private String orderId;
	private List<SpotDraw> spotDraws = new ArrayList<SpotDraw>();
	private List<HotelDraw> hotelDraws = new ArrayList<HotelDraw>();
	private String isDraw;
	private String telephone;
	private String orderNo;

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public List<SpotDraw> getSpotDraws() {
		return spotDraws;
	}

	public void setSpotDraws(List<SpotDraw> spotDraws) {
		this.spotDraws = spotDraws;
	}

	public List<HotelDraw> getHotelDraws() {
		return hotelDraws;
	}

	public void setHotelDraws(List<HotelDraw> hotelDraws) {
		this.hotelDraws = hotelDraws;
	}

	public String getIsDraw() {
		return isDraw;
	}

	public void setIsDraw(String isDraw) {
		this.isDraw = isDraw;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

}
