package com.moma.framework.web;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class StaticResourceListener implements ServletContextListener{
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext servletContext = sce.getServletContext();
		servletContext.setAttribute("staticServerPath1", "//static1.tour-guide.com");
		servletContext.setAttribute("staticServerPath2", "//static2.tour-guide.com");
		servletContext.setAttribute("staticServerPath3", "//static3.tour-guide.com");
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
	}

}
