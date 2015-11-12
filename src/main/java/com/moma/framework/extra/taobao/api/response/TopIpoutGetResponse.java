package com.moma.framework.extra.taobao.api.response;

import java.util.List;
import com.moma.framework.extra.taobao.api.internal.mapping.ApiField;
import com.moma.framework.extra.taobao.api.internal.mapping.ApiListField;

import com.moma.framework.extra.taobao.api.TaobaoResponse;

/**
 * TOP API: taobao.top.ipout.get response.
 * 
 * @author top auto create
 * @since 1.0, null
 */
public class TopIpoutGetResponse extends TaobaoResponse {

	private static final long serialVersionUID = 7398438213784346123L;

	/** 
	 * 出口IP段列表
	 */
	@ApiListField("ip_sections")
	@ApiField("string")
	private List<String> ipSections;

	public void setIpSections(List<String> ipSections) {
		this.ipSections = ipSections;
	}
	public List<String> getIpSections( ) {
		return this.ipSections;
	}

}
