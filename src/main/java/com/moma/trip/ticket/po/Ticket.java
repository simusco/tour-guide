package com.moma.trip.ticket.po;

import java.io.Serializable;

public class Ticket implements Serializable {

	private String ticketId;
	private String ticketGroupId;
	private String name;
	private String detail;
	private Integer quantity;
	private String marketPrice; // 市场价格
	private String icon; // 套餐图标
	private String hostId; // 酒店、门票、车费、餐费
	private String hostType; // host类型

}
