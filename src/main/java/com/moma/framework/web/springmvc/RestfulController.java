package com.moma.framework.web.springmvc;

import com.moma.framework.web.WebResult;

public class RestfulController {

	protected WebResult success(Object object) {	
		return new WebResult(object, null, true);
	}

	protected WebResult error(Object object, String message) {
		return new WebResult(object, message, false);
	}
	
}
