package com.moma.trip.po;

public class PresentAnalye {

	private String name;
	private Long total;
	private Long remain;// 余票

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getTotal() {
		return total;
	}

	public void setTotal(Long total) {
		this.total = total;
	}

	public Long getRemain() {
		return remain;
	}

	public void setRemain(Long remain) {
		this.remain = remain;
	}

}
