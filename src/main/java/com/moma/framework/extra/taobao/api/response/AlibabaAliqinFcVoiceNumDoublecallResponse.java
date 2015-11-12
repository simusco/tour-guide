package com.moma.framework.extra.taobao.api.response;

import com.moma.framework.extra.taobao.api.internal.mapping.ApiField;
import com.moma.framework.extra.taobao.api.domain.BizResult;

import com.moma.framework.extra.taobao.api.TaobaoResponse;

/**
 * TOP API: alibaba.aliqin.fc.voice.num.doublecall response.
 * 
 * @author top auto create
 * @since 1.0, null
 */
public class AlibabaAliqinFcVoiceNumDoublecallResponse extends TaobaoResponse {

	private static final long serialVersionUID = 5378628691283483938L;

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
