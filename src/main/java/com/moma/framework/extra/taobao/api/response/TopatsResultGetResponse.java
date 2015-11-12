package com.moma.framework.extra.taobao.api.response;

import com.moma.framework.extra.taobao.api.internal.mapping.ApiField;
import com.moma.framework.extra.taobao.api.domain.Task;

import com.moma.framework.extra.taobao.api.TaobaoResponse;

/**
 * TOP API: taobao.topats.result.get response.
 * 
 * @author top auto create
 * @since 1.0, null
 */
public class TopatsResultGetResponse extends TaobaoResponse {

	private static final long serialVersionUID = 6838239562687534352L;

	/** 
	 * 任务结果信息
	 */
	@ApiField("task")
	private Task task;

	public void setTask(Task task) {
		this.task = task;
	}
	public Task getTask( ) {
		return this.task;
	}

}
