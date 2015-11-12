package com.moma.framework.extra.aliyun.api.internal.parser.json;

import com.moma.framework.extra.aliyun.api.AliyunParser;
import com.moma.framework.extra.aliyun.api.AliyunResponse;
import com.moma.framework.extra.aliyun.api.internal.mapping.Converter;
import com.moma.framework.extra.taobao.api.ApiException;

/**
 * 单个JSON对象解释器。
 * 
 * @author lijie.ma
 * @since 1.0, May 19, 2014
 */
public class ObjectJsonParser<T extends AliyunResponse> implements AliyunParser<T> {

	private Class<T> clazz;
	private boolean simplify;

	public ObjectJsonParser(Class<T> clazz) {
		this.clazz = clazz;
	}

	public ObjectJsonParser(Class<T> clazz, boolean simplify) {
		this.clazz = clazz;
		this.simplify = simplify;
	}

	public T parse(String rsp) throws ApiException {
		Converter converter;
		if (this.simplify) {
			converter = new SimplifyJsonConverter();
		} else {
			converter = new JsonConverter();
		}
		return converter.toResponse(rsp, clazz);
	}

	public Class<T> getResponseClass() {
		return clazz;
	}

}
