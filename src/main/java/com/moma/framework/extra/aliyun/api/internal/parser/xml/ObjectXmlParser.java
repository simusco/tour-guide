package com.moma.framework.extra.aliyun.api.internal.parser.xml;

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
public class ObjectXmlParser<T extends AliyunResponse> implements AliyunParser<T> {

	private Class<T> clazz;

	public ObjectXmlParser(Class<T> clazz) {
		this.clazz = clazz;
	}

	public T parse(String rsp) throws ApiException {
		Converter converter = new XmlConverter();
		return converter.toResponse(rsp, clazz);
	}

	public Class<T> getResponseClass() {
		return clazz;
	}

}
