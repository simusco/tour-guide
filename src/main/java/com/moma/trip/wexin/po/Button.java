package com.moma.trip.wexin.po;

import java.util.ArrayList;
import java.util.List;

public class Button {

	private String name;
	private List<Menu> sub_button;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Menu> getSub_button() {
		return sub_button;
	}

	public void setSub_button(List<Menu> sub_button) {
		this.sub_button = sub_button;
	}

	public void addSubButton(Menu menu) {

		if (sub_button == null) {
			sub_button = new ArrayList<Menu>();
		}
		sub_button.add(menu);

	}

	public Button(String name) {
		this.name = name;
	}

}
