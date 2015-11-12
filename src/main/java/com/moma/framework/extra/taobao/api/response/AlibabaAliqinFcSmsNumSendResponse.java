package com.moma.framework.extra.taobao.api.response;

import com.moma.framework.extra.taobao.api.internal.mapping.ApiField;
import com.moma.framework.extra.taobao.api.domain.BizResult;

import com.moma.framework.extra.taobao.api.TaobaoResponse;

/**
 * TOP API: alibaba.aliqin.fc.sms.num.send response.
 * 
 * @author top auto create
 * @since 1.0, null
 */
public class AlibabaAliqinFcSmsNumSendResponse extends TaobaoResponse {

	private static final long serialVersionUID = 8499582943759477317L;

	/** 
	 * 返回结果
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
