package com.moma.framework.extra.aliyun.api;

import com.moma.framework.extra.taobao.api.ApiException;

public interface AliyunAsyncHandler<T extends AliyunResponse> {

	public void onError(ApiException exception);
	
	public void onSuccess(AliyunRequest<T> request,T response);
	
}
