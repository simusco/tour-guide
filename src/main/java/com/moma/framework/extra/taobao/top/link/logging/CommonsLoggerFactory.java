package com.moma.framework.extra.taobao.top.link.logging;

import org.apache.commons.logging.impl.LogFactoryImpl;

import com.moma.framework.extra.taobao.top.link.Logger;
import com.moma.framework.extra.taobao.top.link.LoggerFactory;

public class CommonsLoggerFactory implements LoggerFactory {
	public Logger create(String type) {
		return new CommonsLogger(LogFactoryImpl.getLog(type));
	}

	public Logger create(Class<?> type) {
		return new CommonsLogger(LogFactoryImpl.getLog(type));
	}

	public Logger create(Object object) {
		return new CommonsLogger(LogFactoryImpl.getLog(object.getClass()));
	}
}
