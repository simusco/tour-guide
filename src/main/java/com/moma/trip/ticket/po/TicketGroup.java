package com.moma.trip.ticket.po;

import java.io.Serializable;
import java.math.BigDecimal;

public class TicketGroup implements Serializable {

	private String ticketGroupId;
	private String activityId;//套餐所属路线/活动
	private String pricePlanId;//针对本套餐的价格计划
	private String name; // 套餐组名称
	private BigDecimal ticketPrice; // 票价
	private String marketPrice; // 市场价格

}
