package com.moma.trip.po;

import java.io.Serializable;

public class OrderVisitor implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2060442230446154676L;
	private String orderVisitorId;
	private String orderId;
	private String name;
	private String telephone;
	private String cardType;// 身份证
	private String idcard;
	private String gender;
	

	public String getOrderVisitorId() {
		return orderVisitorId;
	}

	public void setOrderVisitorId(String orderVisitorId) {
		this.orderVisitorId = orderVisitorId;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getCardType() {
		return cardType;
	}

	public void setCardType(String cardType) {
		this.cardType = cardType;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

}
