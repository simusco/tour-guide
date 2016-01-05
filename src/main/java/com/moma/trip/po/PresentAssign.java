package com.moma.trip.po;

import java.util.Date;

public class PresentAssign {

	private String presentAssignId;
	private String presentId;
	private String weixin;
	private Date assignTime;
	private String assign;
	private String code;

	public String getPresentAssignId() {
		return presentAssignId;
	}

	public void setPresentAssignId(String presentAssignId) {
		this.presentAssignId = presentAssignId;
	}

	public String getPresentId() {
		return presentId;
	}

	public void setPresentId(String presentId) {
		this.presentId = presentId;
	}

	public String getWeixin() {
		return weixin;
	}

	public void setWeixin(String weixin) {
		this.weixin = weixin;
	}

	public Date getAssignTime() {
		return assignTime;
	}

	public void setAssignTime(Date assignTime) {
		this.assignTime = assignTime;
	}

	public String getAssign() {
		return assign;
	}

	public void setAssign(String assign) {
		this.assign = assign;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

}
