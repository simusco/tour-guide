package com.moma.trip.po;

import java.math.BigDecimal;
import java.util.Date;

public class HotelPrice {

	private String hotelPriceId;
	private String hotelId;
	private BigDecimal price;
	private String year;
	private String month;
	private String day;
	private Date date;
	private String mealsIncluded;
	private String numberOfBreakfast;
	private String marketPrice;

	public String getHotelPriceId() {
		return hotelPriceId;
	}

	public void setHotelPriceId(String hotelPriceId) {
		this.hotelPriceId = hotelPriceId;
	}

	public String getHotelId() {
		return hotelId;
	}

	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
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

	public String getMarketPrice() {
		return marketPrice;
	}

	public void setMarketPrice(String marketPrice) {
		this.marketPrice = marketPrice;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}
