package com.moma.trip.controller.web;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.moma.framework.ServiceException;
import com.moma.framework.extra.alipay.config.AlipayConfig;
import com.moma.framework.extra.alipay.util.AlipaySubmit;
import com.moma.framework.extra.ctrip.utils.ConfigData;
import com.moma.framework.extra.ctrip.utils.SignatureUtils;
import com.moma.framework.extra.taobao.api.internal.util.StringUtils;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.Order;
import com.moma.trip.po.OrderVisitor;
import com.moma.trip.po.Ticket;
import com.moma.trip.po.TicketDetail;
import com.moma.trip.po.User;
import com.moma.trip.service.OrderService;
import com.moma.trip.service.PaymentService;
import com.moma.trip.service.SignUpService;
import com.moma.trip.service.TicketService;

@Scope(value="prototype")
@Controller
@RequestMapping("/web/v1/order")
public class OrderController  extends RestfulController {

	private static Logger logger = Logger.getLogger(OrderController.class);  
	
	@Resource
	private SignUpService signUpService;
	@Resource
	private TicketService ticketService;
	@Resource
	private OrderService orderService;
	@Resource
	private PaymentService paymentService;
	
	@RequestMapping(value="/generate.html",method=RequestMethod.GET)
	public ModelAndView generate(String ticketId, String ticketTime){
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(ticketTime == null || "".equals(ticketTime.trim())){
			ticketTime = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		}
		
		Ticket ticket = ticketService.getTicketById(ticketId);
		if(ticket == null)
			return new ModelAndView("error");
		
		List<TicketDetail> ticketDetailList = ticketService.getTicketDetailList(ticketId);
		map.put("ticket", ticket);
		map.put("ticketDetailList", ticketDetailList);
		map.put("ticketTime", ticketTime);
		
		return new ModelAndView("order-generate", map);
	}
	
	/**
	 * 检查订单信息填写是否完整
	 * @param order
	 */
	public void validateGenerate(Order order){
		List<OrderVisitor> ovlist = order.getOrderVisitors();
		if(ovlist == null || 
		   ovlist.isEmpty() || 
		   StringUtils.isEmpty(ovlist.get(0).getName()) || 
		   StringUtils.isEmpty(ovlist.get(0).getTelephone())){
			throw new ServiceException("联系人信息未填写完整!"); 
		}
	}
	
	@RequestMapping(value="/generate.html",method=RequestMethod.POST)
	@ResponseBody
	public byte[] generate(@RequestBody Order order, HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();

		try{
			validateGenerate(order);
			
			//根据填写的手机号创建用户
			logger.info("未登录用户，系统自动创建用户根据手机好吗。");
			
			String telephone = order.getOrderVisitors().get(0).getTelephone();
			String name = order.getOrderVisitors().get(0).getName();
			User user = (User) request.getSession().getAttribute(User.LOGIN_USER);
			if(user == null && (user = signUpService.getUserByLoginId(telephone)) == null){
				user = signUpService.signUp(name, telephone);
				request.getSession().setAttribute(User.LOGIN_USER, user);
			}
			
			//这里需要实现订单可定性检查，不成功给予用户提示
			//1.检查酒店可定性
			//2.检查门票可定性
			//--检查用户提交的订单金额是否等于ctrip返回的金额
			boolean flag = orderService.avail(order);
			
			//3.不可定提示
			if(!flag){
				throw new ServiceException("套餐已经被预定完。");
			}
			
			//4.可定，生成本系统订单，并跳转到支付界面
			//5.本系统订单状态--未支付
			order.setUserId(user.getUserId());
			order.setCtripUniqueId(user.getCtripUniqueId());
			
			map.put("flag", true);
			map.put("orderNo", orderService.save(order));
		}catch(Exception e){
			e.printStackTrace();
			//生成订单失败
			map.put("flag", false);
			map.put("msg", e.getMessage());
		}
		
		return toJSONBytes(map);
	}
	
	/*
	@RequestMapping(value="/payment.html",method=RequestMethod.GET)
	public ModelAndView payment(String orderNo, HttpServletRequest request){
		User user = (User) request.getSession().getAttribute(User.LOGIN_USER);
		
		Map<String, Object> map = new HashMap<String, Object>();
		String result = "alipay-pay";
		try{
			Order order = orderService.getOrderByNo(orderNo, user.getUserId());
			
			map.put("order", order);
			map.put("flag", true);
			//TODO 地址未实现,支付宝支付。
			map.put("html", getAlipayHtml(
					order.getOrderNo(), 
					order.getTicketName(), 
					new DecimalFormat("######.##").format(order.getTotalPrice()), 
					order.getTicketDesc(),
					""));
		}catch(Exception e){
			e.printStackTrace();
			map.put("msg", e.getMessage());
			map.put("flag", false);
			result = "payment-error";
		}
	
		return new ModelAndView(result, map);
	}*/
	
	@RequestMapping(value="/payment.html",method=RequestMethod.GET)
	public ModelAndView payment(String orderNo, HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		String result = "ctrip-pay";
		try{
			Order order = orderService.getOrderByNo(orderNo);
			
			String timestamp = SignatureUtils.GetTimeStamp();
			map.put("allianceId", ConfigData.AllianceId);
			map.put("sid", ConfigData.SId);
			map.put("timestamp", timestamp);
			map.put("requestType", "PaymentEntry");
			map.put("signature", SignatureUtils.CalculationSignature(timestamp, ConfigData.AllianceId,
					ConfigData.SecretKey, ConfigData.SId, "PaymentEntry"));
			map.put("order", order);
			map.put("flag", true);
			map.put("tripOrderId", order.getHotelResId().split("-")[1]);
		}catch(Exception e){
			e.printStackTrace();
			map.put("msg", e.getMessage());
			map.put("flag", false);
			result = "payment-error";
		}
	
		return new ModelAndView(result, map);
	}
	
	public String getAlipayHtml(
			String out_trade_no,
			String subject,
			String total_fee,
			String body,
			String show_url
			) throws UnsupportedEncodingException{
		
		String payment_type = "1";
		String notify_url = "http://商户网关地址/tour-guide/web/v1/alipay/notify.do";
		String return_url = "http://商户网关地址/tour-guide/web/v1/alipay/returnUrl.do";
		String anti_phishing_key = "";
		String exter_invoke_ip = "";
		
		//把请求参数打包成数组
		Map<String, String> sParaTemp = new HashMap<String, String>();
		sParaTemp.put("service", "create_direct_pay_by_user");
        sParaTemp.put("partner", AlipayConfig.partner);
        sParaTemp.put("seller_email", AlipayConfig.seller_email);
        sParaTemp.put("_input_charset", AlipayConfig.input_charset);
		sParaTemp.put("payment_type", payment_type);
		sParaTemp.put("notify_url", notify_url);
		sParaTemp.put("return_url", return_url);
		sParaTemp.put("out_trade_no", out_trade_no);
		sParaTemp.put("subject", subject);
		sParaTemp.put("total_fee", total_fee);
		sParaTemp.put("body", body);
		sParaTemp.put("show_url", show_url);
		sParaTemp.put("anti_phishing_key", anti_phishing_key);
		sParaTemp.put("exter_invoke_ip", exter_invoke_ip);
		
		return AlipaySubmit.buildRequest(sParaTemp,"get","确认");
	}
	
	@RequestMapping(value="/payment.html",method=RequestMethod.POST)
	public String payment(){
		//1.接受用户支付
		
		//2.检查支付成功否，成功go to 3
		//3.更新订单状态到已支付
	
		//后台开始与携程交互
		//4.根据本系统order id, 提交携程生成门票和酒店订单。
		//5.支付携程订单
		//6.确认携程支付成功否
		//7.不成功，获取原因，开始退回用户订单。
		//8.通知用户订单被退回
		
		return "payment-success";
	}
	
	@RequestMapping(value="/price.html",method=RequestMethod.POST)
	@ResponseBody
	public byte[] price(@RequestBody Order order, HttpServletRequest request){

		Map<String, Object> map = new HashMap<String, Object>();
		try{
			Double price = orderService.getPrice(order);
			
			map.put("price", price);
			map.put("flag", true);
		}catch(Exception e){
			map.put("flag", false);
			map.put("msg", e.getMessage());
		}
		
		return toJSONBytes(map);
	}
	
}
