package com.moma.trip.po;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ActivityPlan implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2675565075087337878L;
	private String activityPlanId;
	private String name;
	private String type;
	private String description;
	private String topicDesc;
	private BigDecimal price;
	private String priceDesc;
	private String marketPrice;
	private String takeTime;
	private String traffic;
	private String minPepoleNum;
	private String maxPepoleNum;
	private String preRegDay;
	private String destination;
	private String departure;
	private Timestamp createTime;
	private Integer sort;
	private String imageURL;
	private Integer hasSaled;
	private String topic;
	private String expInclusive;
	private String discount;
	private String goodReviewPer;
	private String topicId;
	private String otherAttr;

	private List<ActivityTag> activityTagList = new ArrayList<ActivityTag>();
	private Map<Tags, List<Tags>> tags = new HashMap<Tags, List<Tags>>();
	private List<Image> imageList = new ArrayList<Image>();
	private List<Goodness> goodnessList = new ArrayList<Goodness>();
	private List<ActivityExtra> extraList = new ArrayList<ActivityExtra>();
	private List<Ticket> ticketList = new ArrayList<Ticket>();

	public String getActivityPlanId() {
		return activityPlanId;
	}

	public void setActivityPlanId(String activityPlanId) {
		this.activityPlanId = activityPlanId;
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

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getPriceDesc() {
		return priceDesc;
	}

	public void setPriceDesc(String priceDesc) {
		this.priceDesc = priceDesc;
	}

	public String getTakeTime() {
		return takeTime;
	}

	public void setTakeTime(String takeTime) {
		this.takeTime = takeTime;
	}

	public String getTraffic() {
		return traffic;
	}

	public void setTraffic(String traffic) {
		this.traffic = traffic;
	}

	public String getMinPepoleNum() {
		return minPepoleNum;
	}

	public void setMinPepoleNum(String minPepoleNum) {
		this.minPepoleNum = minPepoleNum;
	}

	public String getMaxPepoleNum() {
		return maxPepoleNum;
	}

	public void setMaxPepoleNum(String maxPepoleNum) {
		this.maxPepoleNum = maxPepoleNum;
	}

	public String getPreRegDay() {
		return preRegDay;
	}

	public void setPreRegDay(String preRegDay) {
		this.preRegDay = preRegDay;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getDeparture() {
		return departure;
	}

	public void setDeparture(String departure) {
		this.departure = departure;
	}

	public Timestamp getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}

	public List<ActivityTag> getActivityTagList() {
		return activityTagList;
	}

	public void setActivityTagList(List<ActivityTag> activityTagList) {
		this.activityTagList = activityTagList;
	}

	public Map<Tags, List<Tags>> getTags() {
		return tags;
	}

	public void setTags(Map<Tags, List<Tags>> tags) {
		this.tags = tags;
	}

	public List<Image> getImageList() {
		return imageList;
	}

	public void setImageList(List<Image> imageList) {
		this.imageList = imageList;
	}

	public Integer getHasSaled() {
		return hasSaled;
	}

	public void setHasSaled(Integer hasSaled) {
		this.hasSaled = hasSaled;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public String getExpInclusive() {
		return expInclusive;
	}

	public void setExpInclusive(String expInclusive) {
		this.expInclusive = expInclusive;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getMarketPrice() {
		return marketPrice;
	}

	public void setMarketPrice(String marketPrice) {
		this.marketPrice = marketPrice;
	}

	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}

	public String getGoodReviewPer() {
		return goodReviewPer;
	}

	public void setGoodReviewPer(String goodReviewPer) {
		this.goodReviewPer = goodReviewPer;
	}

	public String getTopicId() {
		return topicId;
	}

	public void setTopicId(String topicId) {
		this.topicId = topicId;
	}

	public List<Goodness> getGoodnessList() {
		return goodnessList;
	}

	public void setGoodnessList(List<Goodness> goodnessList) {
		this.goodnessList = goodnessList;
	}

	public List<ActivityExtra> getExtraList() {
		return extraList;
	}

	public void setExtraList(List<ActivityExtra> extraList) {
		this.extraList = extraList;
	}

	public List<Ticket> getTicketList() {
		return ticketList;
	}

	public void setTicketList(List<Ticket> ticketList) {
		this.ticketList = ticketList;
	}

	public String getOtherAttr() {
		return otherAttr;
	}

	public void setOtherAttr(String otherAttr) {
		this.otherAttr = otherAttr;
	}

	public String getTopicDesc() {
		return topicDesc;
	}

	public void setTopicDesc(String topicDesc) {
		this.topicDesc = topicDesc;
	}

}
