package com.moma.trip.wechat.po;

public class Menu {

	private String name;
	private String type;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Menu(String type, String name) {
		this.name = name;
		this.type = type;
	}

}
