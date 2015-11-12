package com.moma.framework.web.springmvc;

import java.util.HashMap;
import java.util.Map;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.moma.framework.web.WebResult;

public class RestfulController {

	protected WebResult success(Object object) {	
		return new WebResult(object, null, true);
	}

	protected WebResult error(Object object, String message) {
		return new WebResult(object, message, false);
	}
	
	protected Map<String, Object> unlogin(){
		Map<String, Object> map = new HashMap<String, Object>();
		
		//TODO 进入登陆页面
		map.put("flag", false);
		map.put("msg", "10000");//未登录，这种写法是有问题的..
		
		return map;
	}
	
	protected byte[] toJSONBytes(Map<String, Object> map){
		return JSON.toJSONBytes(map, SerializerFeature.BrowserCompatible);
	}
	
}
