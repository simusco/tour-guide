package com.moma.framework.extra.ctrip.dto;

import java.sql.Timestamp;

public class HotelRate {

	private String hotelRateId;

	private String hotelRatePlanId;

	private String start;

	private String end;

	private String amountBeforeTax;

	private String listPrice;

	private String mealsIncluded;

	private String numberOfBreakfast;
	
	private Timestamp sychTime;

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	public String getAmountBeforeTax() {
		return amountBeforeTax;
	}

	public void setAmountBeforeTax(String amountBeforeTax) {
		this.amountBeforeTax = amountBeforeTax;
	}

	public String getListPrice() {
		return listPrice;
	}

	public void setListPrice(String listPrice) {
		this.listPrice = listPrice;
	}

	public String getMealsIncluded() {
		return mealsIncluded;
	}

	public void setMealsIncluded(String mealsIncluded) {
		this.mealsIncluded = mealsIncluded;
	}

	public String getNumberOfBreakfast() {
		return numberOfBreakfast;
	}

	public void setNumberOfBreakfast(String numberOfBreakfast) {
		this.numberOfBreakfast = numberOfBreakfast;
	}

	public String getHotelRateId() {
		return hotelRateId;
	}

	public void setHotelRateId(String hotelRateId) {
		this.hotelRateId = hotelRateId;
	}

	public String getHotelRatePlanId() {
		return hotelRatePlanId;
	}

	public void setHotelRatePlanId(String hotelRatePlanId) {
		this.hotelRatePlanId = hotelRatePlanId;
	}

	@Override
	public String toString() {
		return "Rate [start=" + start + ", end=" + end + ", amountBeforeTax=" + amountBeforeTax + ", listPrice="
				+ listPrice + ", mealsIncluded=" + mealsIncluded + ", numberOfBreakfast=" + numberOfBreakfast + "]";
	}

	public Timestamp getSychTime() {
		return sychTime;
	}

	public void setSychTime(Timestamp sychTime) {
		this.sychTime = sychTime;
	}

}
