package com.moma.trip.po;

import java.io.Serializable;

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
	private String code;

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

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

}
