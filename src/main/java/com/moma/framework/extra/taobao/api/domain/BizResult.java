package com.moma.framework.extra.taobao.api.domain;

import com.moma.framework.extra.taobao.api.TaobaoObject;
import com.moma.framework.extra.taobao.api.internal.mapping.ApiField;

/**
 * 返回结果对象
 *
 * @author top auto create
 * @since 1.0, null
 */
public class BizResult extends TaobaoObject {

	private static final long serialVersionUID = 4898283887249952374L;

	/**
	 * 返回结果
	 */
	@ApiField("model")
	private String model;

	/**
	 * 返回信息描述
	 */
	@ApiField("msg")
	private String msg;

	/**
	 * true表示成功，false表示失败
	 */
	@ApiField("success")
	private Boolean success;

	public String getModel() {
		return this.model;
	}
	public void setModel(String model) {
		this.model = model;
	}

	public String getMsg() {
		return this.msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Boolean getSuccess() {
		return this.success;
	}
	public void setSuccess(Boolean success) {
		this.success = success;
	}

}
