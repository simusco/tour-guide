package com.moma.trip.webxin.po;

import java.util.ArrayList;

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
