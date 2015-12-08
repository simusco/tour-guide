package com.moma.trip.po;

import java.io.Serializable;
import java.security.Timestamp;

public class TicketDetail implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8857855154658016840L;

	private String ticketDetailId;
	private String ticketId;
	private String name;
	private String description;
	private String type;
	private String imageUrl;
	private String code1;
	private String code2;
	private String isPay;
	private String isDisplay;
	private Integer quantity;
	private String groupCode;

	public String getTicketDetailId() {
		return ticketDetailId;
	}

	public void setTicketDetailId(String ticketDetailId) {
		this.ticketDetailId = ticketDetailId;
	}

	public String getTicketId() {
		return ticketId;
	}

	public void setTicketId(String ticketId) {
		this.ticketId = ticketId;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
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

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public String getGroupCode() {
		return groupCode;
	}

	public void setGroupCode(String groupCode) {
		this.groupCode = groupCode;
	}

}
