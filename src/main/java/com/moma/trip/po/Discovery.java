package com.moma.trip.po;

import java.util.Date;

public class Discovery {

	private String discoveryId;
	private String name;
	private String description;
	private Date publishTime;
	private String tags;
	private String imageURL;
	private String type;
	private String author;
	private String url;
	private String isRec = "no";

	public String getDiscoveryId() {
		return discoveryId;
	}

	public void setDiscoveryId(String discoveryId) {
		this.discoveryId = discoveryId;
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

	public Date getPublishTime() {
		return publishTime;
	}

	public void setPublishTime(Date publishTime) {
		this.publishTime = publishTime;
	}

	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getIsRec() {
		return isRec;
	}

	public void setIsRec(String isRec) {
		this.isRec = isRec;
	}

}
