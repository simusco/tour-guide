package com.moma.trip.order.po;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class Order implements Serializable {

	// 主键ID
	private String orderId;
	// 路线ID
	private String activityId;
	// 套餐
	private String ticketGroupId;
	// 出发时间
	private String departureTime;
	// 预定数量
	private Integer quantity;
	// 订单创建时间
	private Date createTime;
	// 总价格
	private BigDecimal totalPrice;
	// 正常，取消
	private String status;
	// 是否已经支持
	private String isPay;

}
