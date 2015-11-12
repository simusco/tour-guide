package com.moma.framework.extra.taobao.api.response;

import com.moma.framework.extra.taobao.api.internal.mapping.ApiField;

import com.moma.framework.extra.taobao.api.TaobaoResponse;

/**
 * TOP API: taobao.appip.get response.
 * 
 * @author top auto create
 * @since 1.0, null
 */
public class AppipGetResponse extends TaobaoResponse {

	private static final long serialVersionUID = 7567779275696173596L;

	/** 
	 * ISV发起请求服务器IP
	 */
	@ApiField("ip")
	private String ip;

	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getIp( ) {
		return this.ip;
	}

}
