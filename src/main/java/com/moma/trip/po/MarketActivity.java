package com.moma.trip.po;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MarketActivity implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6408274589819380443L;
	private String activityId;
	private String name;
	private String rule;
	private String imageURL;
	private Date startTime;
	private Date endTime;
	private Integer rangeBegin;
	private Integer rangeEnd;
	private List<Present> presents = new ArrayList<Present>();

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

	public String getRule() {
		return rule;
	}

	public void setRule(String rule) {
		this.rule = rule;
	}

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public Integer getRangeBegin() {
		return rangeBegin;
	}

	public void setRangeBegin(Integer rangeBegin) {
		this.rangeBegin = rangeBegin;
	}

	public Integer getRangeEnd() {
		return rangeEnd;
	}

	public void setRangeEnd(Integer rangeEnd) {
		this.rangeEnd = rangeEnd;
	}

	public List<Present> getPresents() {
		return presents;
	}

	public void setPresents(List<Present> presents) {
		this.presents = presents;
	}

}
