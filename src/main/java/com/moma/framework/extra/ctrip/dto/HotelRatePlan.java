package com.moma.framework.extra.ctrip.dto;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

@SuppressWarnings("serial")
public class HotelRatePlan implements Serializable {

	private String hotelRatePlanId;

	private String hotelCode;

	private String ratePlanCode;

	private String ratePlanCategory;

	private String marketCode;
	
	private Timestamp sychTime;

	private List<HotelRate> rateList;

	public String getHotelCode() {
		return hotelCode;
	}

	public void setHotelCode(String hotelCode) {
		this.hotelCode = hotelCode;
	}

	public String getRatePlanCode() {
		return ratePlanCode;
	}

	public void setRatePlanCode(String ratePlanCode) {
		this.ratePlanCode = ratePlanCode;
	}

	public String getRatePlanCategory() {
		return ratePlanCategory;
	}

	public void setRatePlanCategory(String ratePlanCategory) {
		this.ratePlanCategory = ratePlanCategory;
	}

	public String getMarketCode() {
		return marketCode;
	}

	public void setMarketCode(String marketCode) {
		this.marketCode = marketCode;
	}

	public List<HotelRate> getRateList() {
		return rateList;
	}

	public void setRateList(List<HotelRate> rateList) {
		this.rateList = rateList;
	}

	public String getHotelRatePlanId() {
		return hotelRatePlanId;
	}

	public void setHotelRatePlanId(String hotelRatePlanId) {
		this.hotelRatePlanId = hotelRatePlanId;
	}

	@Override
	public String toString() {
		return "HotelRatePlan [hotelCode=" + hotelCode + ", ratePlanCode=" + ratePlanCode + ", ratePlanCategory="
				+ ratePlanCategory + ", marketCode=" + marketCode + ", rateList=" + rateList + "]";
	}

	public Timestamp getSychTime() {
		return sychTime;
	}

	public void setSychTime(Timestamp sychTime) {
		this.sychTime = sychTime;
	}

}
