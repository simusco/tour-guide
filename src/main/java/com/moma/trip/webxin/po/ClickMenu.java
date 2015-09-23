package com.moma.trip.webxin.po;

public class ClickMenu extends Menu {

	private String key;

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public ClickMenu(String name,  String key) {
		super("click", name);
		this.key = key;
	}

}
