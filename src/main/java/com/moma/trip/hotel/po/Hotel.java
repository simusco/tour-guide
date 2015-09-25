package com.moma.trip.hotel.po;

import java.io.Serializable;

public class Hotel implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 9175869319386970225L;
	private String hotelId;
	private String name;
	private String description;
	private String address;

	public String getHotelId() {
		return hotelId;
	}

	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
