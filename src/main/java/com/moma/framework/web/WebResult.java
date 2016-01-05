package com.moma.framework.web;

import java.io.Serializable;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;

public class WebResult implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5261001908221223139L;
	private String message;
	private Object object = null;
	private boolean flag;

	public WebResult(Object object, String message, boolean flag) {
		this.object = object;
		this.message = message;
		this.flag = flag;
	}

	public String getMessage() {
		return message;
	}

	public Object getObject() {
		return object;
	}

	public boolean isFlag() {
		return flag;
	}
	
	public String toJsonString(){
		return JSON.toJSONString(this);
	}
	
	public byte[] toJSONBytes(){
		return JSON.toJSONBytes(this, SerializerFeature.BrowserCompatible);
	}

}
