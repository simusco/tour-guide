package com.moma.framework.extra.ctrip.dto;

import java.util.ArrayList;
import java.util.List;

public class HotelRes {

	private String resIdType;
	private String resId;
	private List<String> errors = new ArrayList<String>();

	public String getResIdType() {
		return resIdType;
	}

	public void setResIdType(String resIdType) {
		this.resIdType = resIdType;
	}

	public String getResId() {
		return resId;
	}

	public void setResId(String resId) {
		this.resId = resId;
	}

	public List<String> getErrors() {
		return errors;
	}

	public void setErrors(List<String> errors) {
		this.errors = errors;
	}

	@Override
	public String toString() {
		return "HotelRes [resIdType=" + resIdType + ", resId=" + resId + ", errors=" + errors + "]";
	}

}
