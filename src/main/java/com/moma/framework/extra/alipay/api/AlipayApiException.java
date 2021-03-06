/**
 * Alipay.com Inc.
 * Copyright (c) 2004-2012 All Rights Reserved.
 */
package com.moma.framework.extra.alipay.api;

import com.moma.framework.extra.taobao.api.ApiException;

/**
 * 支付宝通用异常
 * 
 * @author runzhi
 */
public class AlipayApiException extends ApiException {

	private static final long serialVersionUID = -3681931870669185915L;

	public AlipayApiException() {
		super();
	}

	public AlipayApiException(Throwable cause) {
		super(cause);
	}

	public AlipayApiException(String message, Throwable cause) {
		super(message, cause);
	}
}
