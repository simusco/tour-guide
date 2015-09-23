package com.moma.trip.weixin.po;

public class ViewMenu extends Menu {

	private String url;

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public ViewMenu(String name, String url) {
		super("view", name);
		this.url = url;
	}

}
