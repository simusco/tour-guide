package com.moma.framework.extra.ctrip.dto;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class HotelAvail {

	private String availabilityStatus;// NoAvailability | AvailableForSale
	private BigDecimal amountBeforeTax;
	private String currencyCode;
	private List<String> errors = new ArrayList<String>();

	public String getAvailabilityStatus() {
		return availabilityStatus;
	}

	public void setAvailabilityStatus(String availabilityStatus) {
		this.availabilityStatus = availabilityStatus;
	}

	public BigDecimal getAmountBeforeTax() {
		return amountBeforeTax;
	}

	public void setAmountBeforeTax(BigDecimal amountBeforeTax) {
		this.amountBeforeTax = amountBeforeTax;
	}

	public List<String> getErrors() {
		return errors;
	}

	public void setErrors(List<String> errors) {
		this.errors = errors;
	}

	public String getCurrencyCode() {
		return currencyCode;
	}

	public void setCurrencyCode(String currencyCode) {
		this.currencyCode = currencyCode;
	}

	@Override
	public String toString() {
		return "HotelAvail [availabilityStatus=" + availabilityStatus + ", amountBeforeTax=" + amountBeforeTax
				+ ", currencyCode=" + currencyCode + ", errors=" + errors + "]";
	}

}
