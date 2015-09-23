package com.moma.trip.weixin.util;

import javax.servlet.ServletContext;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

public class ServletBeanUtil {

	public static Object getBean(ServletContext servletContext, String beanName){
		
		WebApplicationContext ctx = WebApplicationContextUtils
				.getWebApplicationContext(servletContext);
		
		return ctx.getBean(beanName);
				
	}
	
}
