package com.moma.trip.po;

import java.io.Serializable;

public class Present implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2659760713397836331L;
	private String presentId;
	private String activityId;
	private String name;
	private String imageURL;
	private Integer random;
	private Integer quantity;
	private String assigned;

	public String getPresentId() {
		return presentId;
	}

	public void setPresentId(String presentId) {
		this.presentId = presentId;
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

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}

	public Integer getRandom() {
		return random;
	}

	public void setRandom(Integer random) {
		this.random = random;
	}

	public String getAssigned() {
		return assigned;
	}

	public void setAssigned(String assigned) {
		this.assigned = assigned;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

}
