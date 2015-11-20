package com.moma.trip.po;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Order implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4551830575529934245L;

	private String orderId;
	
	private String orderNo;

	private String ticketId;

	private String ticketDetailId;

	private String ticketIcon;

	private String ticketName;

	private String ticketDesc;

	private String entryTime;

	private String endTime;

	private Integer quantity;

	private Date createTime;

	private BigDecimal totalPrice;

	private String status;

	private String isPay;

	private String userId;

	private String remark;

	private String bookDay;

	private List<OrderVisitor> orderVisitors = new ArrayList<OrderVisitor>();
	
	private String ctripUniqueId;

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getTicketId() {
		return ticketId;
	}

	public void setTicketId(String ticketId) {
		this.ticketId = ticketId;
	}

	public String getTicketDetailId() {
		return ticketDetailId;
	}

	public void setTicketDetailId(String ticketDetailId) {
		this.ticketDetailId = ticketDetailId;
	}

	public String getTicketName() {
		return ticketName;
	}

	public void setTicketName(String ticketName) {
		this.ticketName = ticketName;
	}

	public String getTicketDesc() {
		return ticketDesc;
	}

	public void setTicketDesc(String ticketDesc) {
		this.ticketDesc = ticketDesc;
	}

	public String getEntryTime() {
		return entryTime;
	}

	public void setEntryTime(String entryTime) {
		this.entryTime = entryTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public BigDecimal getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getIsPay() {
		return isPay;
	}

	public void setIsPay(String isPay) {
		this.isPay = isPay;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getBookDay() {
		return bookDay;
	}

	public void setBookDay(String bookDay) {
		this.bookDay = bookDay;
	}

	public List<OrderVisitor> getOrderVisitors() {
		return orderVisitors;
	}

	public void setOrderVisitors(List<OrderVisitor> orderVisitors) {
		this.orderVisitors = orderVisitors;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getTicketIcon() {
		return ticketIcon;
	}

	public void setTicketIcon(String ticketIcon) {
		this.ticketIcon = ticketIcon;
	}

	public String getCtripUniqueId() {
		return ctripUniqueId;
	}

	public void setCtripUniqueId(String ctripUniqueId) {
		this.ctripUniqueId = ctripUniqueId;
	}

}
