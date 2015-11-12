package com.moma.framework.extra.taobao.top.link.logging;

import org.apache.log4j.LogManager;

import com.moma.framework.extra.taobao.top.link.Logger;
import com.moma.framework.extra.taobao.top.link.LoggerFactory;

public class Log4jLoggerFactory implements LoggerFactory {
	public Logger create(String type) {
		return new Log4jLogger(LogManager.getLogger(type));
	}
	
	public Logger create(Class<?> type) {
		return new Log4jLogger(LogManager.getLogger(type));
	}
	
	public Logger create(Object object) {
		return new Log4jLogger(LogManager.getLogger(object.getClass()));
	}
}
