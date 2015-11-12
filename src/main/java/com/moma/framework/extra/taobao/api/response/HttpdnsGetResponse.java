package com.moma.framework.extra.taobao.api.response;

import com.moma.framework.extra.taobao.api.internal.mapping.ApiField;

import com.moma.framework.extra.taobao.api.TaobaoResponse;

/**
 * TOP API: taobao.httpdns.get response.
 * 
 * @author top auto create
 * @since 1.0, null
 */
public class HttpdnsGetResponse extends TaobaoResponse {

	private static final long serialVersionUID = 7768135548716379194L;

	/** 
	 * HTTP DNS配置信息
	 */
	@ApiField("result")
	private String result;

	public void setResult(String result) {
		this.result = result;
	}
	public String getResult( ) {
		return this.result;
	}

}
