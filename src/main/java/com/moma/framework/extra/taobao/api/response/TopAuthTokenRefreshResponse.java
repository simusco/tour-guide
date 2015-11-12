package com.moma.framework.extra.taobao.api.response;

import com.moma.framework.extra.taobao.api.internal.mapping.ApiField;

import com.moma.framework.extra.taobao.api.TaobaoResponse;

/**
 * TOP API: taobao.top.auth.token.refresh response.
 * 
 * @author top auto create
 * @since 1.0, null
 */
public class TopAuthTokenRefreshResponse extends TaobaoResponse {

	private static final long serialVersionUID = 8156732485267628695L;

	/** 
	 * 返回的是json信息
	 */
	@ApiField("token_result")
	private Object tokenResult;

	public void setTokenResult(Object tokenResult) {
		this.tokenResult = tokenResult;
	}
	public Object getTokenResult( ) {
		return this.tokenResult;
	}

}
