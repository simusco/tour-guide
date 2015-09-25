package com.moma.trip.wechat.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moma.trip.wechat.util.SignUtil;

public class DispatherServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String signature = request.getParameter("signature");
		String timestamp = request.getParameter("timestamp");
		String nonce = request.getParameter("nonce");
		String echostr = request.getParameter("echostr");
		PrintWriter out = response.getWriter();

		if (SignUtil.checkSignature(signature, timestamp, nonce)) {
			out.print(echostr);
		}
		
		out.close();
		out = null;

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");  
		response.setCharacterEncoding("UTF-8"); 
		
		RequestProcess requestProcess = new RequestProcess();
		
		String respMessage = requestProcess.process(request);  
		PrintWriter out = response.getWriter();
		out.print(respMessage);
		out.close();  
		
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = -5960848099062632759L;

}
