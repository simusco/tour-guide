package com.moma.framework.extra.taobao.top.link.remoting;

public interface MethodCallProcessor {
	public MethodReturn process(MethodCall methodCall, MethodCallContext callContext) throws Throwable;
}