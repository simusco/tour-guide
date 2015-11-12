package com.moma.framework.extra.taobao.api.request;

import java.util.Map;

import com.moma.framework.extra.taobao.api.ApiRuleException;
import com.moma.framework.extra.taobao.api.BaseTaobaoRequest;
import com.moma.framework.extra.taobao.api.internal.util.TaobaoHashMap;

import com.moma.framework.extra.taobao.api.response.HttpdnsGetResponse;

/**
 * TOP API: taobao.httpdns.get request
 * 
 * @author top auto create
 * @since 1.0, 2015.08.04
 */
public class HttpdnsGetRequest extends BaseTaobaoRequest<HttpdnsGetResponse> {
	
	

	public String getApiMethodName() {
		return "taobao.httpdns.get";
	}

	public Map<String, String> getTextParams() {		
		TaobaoHashMap txtParams = new TaobaoHashMap();
		if(this.udfParams != null) {
			txtParams.putAll(this.udfParams);
		}
		return txtParams;
	}

	public Class<HttpdnsGetResponse> getResponseClass() {
		return HttpdnsGetResponse.class;
	}

	public void check() throws ApiRuleException {
	}
}