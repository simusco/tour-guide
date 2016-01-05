package com.moma.trip.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.moma.trip.po.User;

public class CheckAuthInterceptor extends HandlerInterceptorAdapter {  

	public boolean preHandle(HttpServletRequest request,  
            HttpServletResponse response, Object handler) throws Exception {  
       
		User user = (User) request.getSession().getAttribute(User.LOGIN_USER);
		
		if(user == null){
			response.sendRedirect(request.getContextPath() + "/web/v1/user/signin.html");
			return false;
		}
		
		return true;
    }  
	
}
