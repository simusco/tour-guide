package com.moma.trip.controller.web;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moma.framework.extra.alipay.util.AlipayNotify;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.Payment;
import com.moma.trip.service.PaymentService;

@Scope(value = "prototype")
@Controller
@RequestMapping("/web/v1/alipay")
public class AlipayController extends RestfulController {

	@Resource
	private PaymentService paymentService;
	
	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/returnUrl.do")
	public ModelAndView returnUrl(HttpServletRequest request) throws Exception {

		Map<String, String> params = new HashMap<String, String>();
		Map requestParams = request.getParameterMap();
		for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
			}
			valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
			params.put(name, valueStr);
		}

		String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"), "UTF-8");
		String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"), "UTF-8");
		String trade_status = new String(request.getParameter("trade_status").getBytes("ISO-8859-1"), "UTF-8");

		Map<String, Object> map = new HashMap<String, Object>();
		boolean verify_result = AlipayNotify.verify(params);
		if (verify_result) {// 验证成功
			if (trade_status.equals("TRADE_FINISHED") || trade_status.equals("TRADE_SUCCESS")) {
				
			}
			
			map.put("flag", true);
			map.put("out_trade_no", out_trade_no);
			map.put("trade_no", trade_no);
		} else {
			map.put("out_trade_no", out_trade_no);
			map.put("flag", false);
		}
		
		return new ModelAndView("alipay-return", map);
	}

	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/notify.do")
	public ModelAndView nofify(HttpServletRequest request) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, String> params = new HashMap<String, String>();
		Map requestParams = request.getParameterMap();
		
		for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
			}
			params.put(name, valueStr);
		}

		String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"), "UTF-8");
		String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"), "UTF-8");
		String trade_status = new String(request.getParameter("trade_status").getBytes("ISO-8859-1"), "UTF-8");
		String total_fee = new String(request.getParameter("total_fee").getBytes("ISO-8859-1"), "UTF-8");

		if (AlipayNotify.verify(params)) {// 验证成功
			if (trade_status.equals("TRADE_FINISHED")) {
			} else if (trade_status.equals("TRADE_SUCCESS")) {
				Payment payment = new Payment();
				payment.setOutTradeNo(out_trade_no);
				payment.setTradeNo(trade_no);
				payment.setTradeStatus(trade_status);
				payment.setTradeTime(new Date());
				payment.setPayPrice(new BigDecimal(total_fee));
				
				paymentService.save(payment);
			}
			map.put("flag", "success");// 请不要修改或删除
		} else {
			map.put("flag", "fail");// 验证失败
		}

		return new ModelAndView("alipay-notify", map);
	}

}
