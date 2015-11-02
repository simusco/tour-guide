package com.moma.trip.po;

import java.util.List;

public class ActivitySearch {

	/**
	 * 
	 * @param type HOT, SPOT, TOPIC
	 * @param tags 标签
	 * @param count 显示条数 , max-count:50
	 * @param page 页
	 * @param order REC,SALE,PRICE
	 * @param orderType -1 desc, 1:asc
	 * @return 
	 */
	
	//type HOT, SPOT, TOPIC
	private String type;
	//标签
	private String[] tags;
	private Integer tagCount;
	//从哪条数据开始
	private Integer from;
	//每页显示多少条数据
	private Integer count;
	//排序方式
	private String order;
	private String orderType;
	//当前页码
	private Integer page;
	//总页数
	private Long totalPage;
	//总结果数
	private Long totalRow;
	
	private List t;
	
	public ActivitySearch() {
	}
	
	public ActivitySearch(String type, String[] tags) {
		this.tagCount = tags == null ? 0 : tags.length;
		this.type = type;
		this.tags = tags;
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

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Long getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Long totalPage) {
		this.totalPage = totalPage;
	}

	public Long getTotalRow() {
		return totalRow;
	}

	public void setTotalRow(Long totalRow) {
		this.totalRow = totalRow;
	}

	public List getT() {
		return t;
	}

	public void setT(List t) {
		this.t = t;
	}

}
