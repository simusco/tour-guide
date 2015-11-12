package com.moma.framework.extra.taobao.api.response;

import com.moma.framework.extra.taobao.api.internal.mapping.ApiField;

import com.moma.framework.extra.taobao.api.TaobaoResponse;

/**
 * TOP API: taobao.top.auth.token.create response.
 * 
 * @author top auto create
 * @since 1.0, null
 */
public class TopAuthTokenCreateResponse extends TaobaoResponse {

	private static final long serialVersionUID = 2139678887313386736L;

	/** 
	 * 返回的是json信息，和之前调用https://oauth.taobao.com/tac/token https://oauth.alibaba.com/token 换token返回的字段信息一致
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
