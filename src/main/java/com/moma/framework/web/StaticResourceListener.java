package com.moma.framework.web;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class StaticResourceListener implements ServletContextListener{
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext servletContext = sce.getServletContext();
		servletContext.setAttribute("staticServerPath1", "//112.74.208.184");
		servletContext.setAttribute("staticServerPath2", "//112.74.208.184");
		servletContext.setAttribute("staticServerPath3", "//112.74.208.184");
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
	}

}
