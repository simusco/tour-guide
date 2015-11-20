package com.moma.trip.extra.ctrip.impl;

import java.io.File;
import java.math.BigDecimal;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.moma.framework.extra.ctrip.base.HttpAccessAdapter;
import com.moma.framework.extra.ctrip.dto.HotelRes;
import com.moma.framework.extra.ctrip.freemarker.TemplateMapper;
import com.moma.framework.extra.ctrip.utils.ConfigData;
import com.moma.framework.extra.ctrip.utils.HotelConstants;
import com.moma.framework.extra.ctrip.utils.SignatureUtils;
import com.moma.framework.extra.ctrip.xml.HotelResParser;
import com.moma.framework.extra.taobao.api.internal.util.StringUtils;
import com.moma.trip.extra.ctrip.OrderRequestService;
import com.moma.trip.extra.job.Test;
import com.moma.trip.po.Order;
import com.moma.trip.po.OrderDetail;
import com.moma.trip.po.OrderVisitor;

@Service
public class OrderRequestServiceImpl implements OrderRequestService {

	@Override
	public void generOrder(Order order, List<OrderDetail> odlist, List<OrderVisitor> orderVisitors) throws Exception {

		Map<String, Object> root = new HashMap<String, Object>();
		//TODO 仅仅支统一价格计划,需要实现多价格计划，但价格计划不同，订单数量和客人数量需要能对接上。
		root.put("orderNo",order.getOrderNo());
		for(int i=0;i<odlist.size();i++){
			OrderDetail od = odlist.get(i);
			
			if("SPOT".equals(od.getType())){
				root.put("productId", od.getCode1());
				root.put("resourceId", od.getCode2());
			}
		}
		
		for(int i=0;i<orderVisitors.size();i++){
			OrderVisitor od = orderVisitors.get(i);
			root.put("personName", od.getName());
			root.put("personNameE", "simusco");//TODO 英文名称为生成				
			root.put("gender","0");
			root.put("idCardNo",od.getIdcard());
			root.put("phoneNo",od.getTelephone());
		}
		
		root.put("adultNumber",order.getQuantity());
		root.put("price",order.getTotalPrice());
		root.put("ageType","ADU");
		root.put("remark", StringUtils.isEmpty(order.getRemark()) ? "无" : order.getRemark());
		root.put("useDate",order.getEndTime());
		root.put("quantity",order.getQuantity());
		root.put("uniqueId",order.getCtripUniqueId());
		
		String templateDir = Test.class.getResource(HotelConstants.TEMPLATE_DIR).getPath();
		String request = new TemplateMapper().getTemplateMapping(new File(templateDir), "SpotRes.json", root).replaceAll("\r\n", "");

		String timestamp = SignatureUtils.GetTimeStamp();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("AllianceID", ConfigData.AllianceId);
		params.put("SID", ConfigData.SId);
		params.put("ProtocolType", "1");
		params.put("TimeStamp", timestamp);
		params.put("Channel", "Vacations");
		params.put("Interface", "TicketOrderCreateForPrepay_V2");
		params.put("RequestBody", request);
		params.put("Signature", SignatureUtils.CalculationSignature(timestamp, ConfigData.AllianceId,
				ConfigData.SecretKey, ConfigData.SId, "TicketOrderCreateForPrepay_V2"));
		
		System.out.println(JSON.toJSONString(params));
	}
	
	public HotelRes generHotelOrder(Order order, List<OrderDetail> odlist, List<OrderVisitor> orderVisitors) throws NoSuchAlgorithmException, Exception{
		String templateDir = Test.class.getResource(HotelConstants.TEMPLATE_DIR).getPath();
		String timestamp = SignatureUtils.GetTimeStamp();

		Map<String, Object> root = new HashMap<String, Object>();
		root.put("allianceId", ConfigData.AllianceId);
		root.put("sid", ConfigData.SId);
		root.put("timestamp", timestamp);
		root.put("requestType", "OTA_HotelRes");
		root.put("signature", SignatureUtils.CalculationSignature(timestamp, ConfigData.AllianceId,
				ConfigData.SecretKey, ConfigData.SId, "OTA_HotelRes"));
		
		root.put("uniqueId", order.getCtripUniqueId());
		root.put("numberOfUnits", order.getQuantity());
		
		//TODO 仅仅支统一价格计划,需要实现多价格计划，但价格计划不同，订单数量和客人数量需要能对接上。
		for(int i=0;i<odlist.size();i++){
			OrderDetail od = odlist.get(i);
			
			if("HOTEL".equals(od.getType())){
				root.put("hotelCode", od.getCode1());
				root.put("ratePlanCode", od.getCode2());
			}
		}
		
		for(int i=0;i<orderVisitors.size();i++){
			OrderVisitor od = orderVisitors.get(i);
			root.put("personName", od.getName());
			root.put("phoneNo", od.getTelephone());
		}
		
		root.put("lateArrivalTime", order.getEntryTime());
		root.put("email", "simusco@163.com");
		root.put("guestCount", order.getQuantity());
		root.put("start", order.getEntryTime());
		root.put("end", order.getEndTime());
		root.put("amountBeforeTax", order.getTotalPrice());

		String request = new TemplateMapper().getTemplateMapping(new File(templateDir), "HotelRes.xml", root);
		String response = HttpAccessAdapter.SendRequestToUrl(request, HotelConstants.URL_HOTEL_RES, null);
		
		return new HotelResParser(response).parser();
	}
	
	public static void main(String[] args) throws Exception{
		
		Order order = new Order();
		order.setOrderNo("14480028019422579936");
		order.setCtripUniqueId("48b1f49d-8b62-483a-a138-a1b8cae25d05");
		order.setQuantity(1);
		order.setEntryTime("2015-12-08");
		order.setEndTime("2015-12-09");//日期需要大一天
		order.setTotalPrice(new BigDecimal("40"));
		
		List<OrderVisitor> orderVisitors = new ArrayList<OrderVisitor>();
		OrderVisitor ov = new OrderVisitor();
		ov.setName("杨晨");
		ov.setTelephone("13410240005");
		ov.setIdcard("513721198810031378");
		orderVisitors.add(ov);
		
		List<OrderDetail> odlist = new ArrayList<OrderDetail>();
		OrderDetail od = new OrderDetail();
		od.setType("SPOT");
		od.setCode1("103060");
		od.setCode2("1659388");//12081415//12081414
		odlist.add(od);
		
		new OrderRequestServiceImpl().generOrder(order, odlist, orderVisitors);
		
		//HotelAvail hv = new HotelRequestServiceImpl().hotelAvail("2116656", "12081415", "2015-12-08", "2015-12-09", 1, "2015-12-08");
		//System.out.println(hv);
	}

}