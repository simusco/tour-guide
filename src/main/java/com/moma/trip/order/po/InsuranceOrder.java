package com.moma.trip.order.po;

import java.io.Serializable;

public class InsuranceOrder implements Serializable {

	private String insuranceOrderId;
	private String orderId;
	private String visitorId;
	private String isBuy;// 是否已经购买 Y/N
	private String status;// 正常，取消
	private String isPay;// 是否已经支持
	private String createTime;

}
