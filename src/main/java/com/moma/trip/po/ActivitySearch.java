package com.moma.trip.po;

public class ActivitySearch {

	private String type;
	private String[] tags;
	private Integer tagCount;
	private Integer from;
	private Integer count;
	private String order;
	private String orderType;

	public ActivitySearch() {
	}

	public ActivitySearch(String type, String[] tags, Integer from, Integer count, String order, String orderType) {
		this.tagCount = tags == null ? 0 : tags.length;
		this.type = type;
		this.tags = tags;
		this.from = from;
		this.count = count;
		this.order = order;
		this.orderType = orderType;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String[] getTags() {
		return tags;
	}

	public void setTags(String[] tags) {
		this.tags = tags;
	}

	public Integer getFrom() {
		return from;
	}

	public void setFrom(Integer from) {
		this.from = from;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public String getOrderType() {
		return orderType;
	}

	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}

	public Integer getTagCount() {
		return tagCount;
	}

	public void setTagCount(Integer tagCount) {
		this.tagCount = tagCount;
	}

}
