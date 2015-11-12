package com.moma.framework.extra.taobao.api.request;

import com.moma.framework.extra.taobao.api.internal.util.RequestCheckUtils;
import java.util.Map;

import com.moma.framework.extra.taobao.api.ApiRuleException;
import com.moma.framework.extra.taobao.api.BaseTaobaoRequest;
import com.moma.framework.extra.taobao.api.internal.util.TaobaoHashMap;

import com.moma.framework.extra.taobao.api.response.AreasGetResponse;

/**
 * TOP API: taobao.areas.get request
 * 
 * @author top auto create
 * @since 1.0, 2015.09.17
 */
public class AreasGetRequest extends BaseTaobaoRequest<AreasGetResponse> {
	
	

	/** 
	* 需返回的字段列表.可选值:Area 结构中的所有字段;多个字段之间用","分隔.如:id,type,name,parent_id,zip.
	 */
	private String fields;

	public void setFields(String fields) {
		this.fields = fields;
	}
	public String getFields() {
		return this.fields;
	}

	public String getApiMethodName() {
		return "taobao.areas.get";
	}

	public Map<String, String> getTextParams() {		
		TaobaoHashMap txtParams = new TaobaoHashMap();
		txtParams.put("fields", this.fields);
		if(this.udfParams != null) {
			txtParams.putAll(this.udfParams);
		}
		return txtParams;
	}

	public Class<AreasGetResponse> getResponseClass() {
		return AreasGetResponse.class;
	}

	public void check() throws ApiRuleException {
		RequestCheckUtils.checkNotEmpty(fields, "fields");
	}
}