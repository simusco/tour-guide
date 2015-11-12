package com.moma.framework.extra.taobao.api.response;

import com.moma.framework.extra.taobao.api.internal.mapping.ApiField;
import com.moma.framework.extra.taobao.api.domain.BizResult;

import com.moma.framework.extra.taobao.api.TaobaoResponse;

/**
 * TOP API: alibaba.aliqin.fc.tts.num.singlecall response.
 * 
 * @author top auto create
 * @since 1.0, null
 */
public class AlibabaAliqinFcTtsNumSinglecallResponse extends TaobaoResponse {

	private static final long serialVersionUID = 6222276993976844431L;

	/** 
	 * 接口返回参数
	 */
	@ApiField("result")
	private BizResult result;

	public void setResult(BizResult result) {
		this.result = result;
	}
	public BizResult getResult( ) {
		return this.result;
	}

}
