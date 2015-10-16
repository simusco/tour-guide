package com.moma.trip.po;

import java.io.Serializable;
import java.math.BigDecimal;

public class Price implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4687676774004750269L;
	private String priceId;
	//所属价格计划
	private String pricePlanId;
	
	private String year;
	private String month;
	private String date;
	private BigDecimal price;
	
	
}
