package com.moma.framework.utils;

import java.util.HashMap;
import java.util.Map;

import javax.sql.rowset.serial.SerialException;

import com.alibaba.fastjson.JSON;
import com.moma.framework.ServiceException;
import com.moma.framework.extra.taobao.api.DefaultTaobaoClient;
import com.moma.framework.extra.taobao.api.TaobaoClient;
import com.moma.framework.extra.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.moma.framework.extra.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

public class SmsNumUtils {

	public static final String REG = "reg";
	public static final String REG_VCODE = "reg_vcode";
	public static final String REG_VCODE_TIME = "reg_vcode_time";
	public static final String REG_PHONE = "reg_phone";
	
	@SuppressWarnings("rawtypes")
	public static Map<String, Object> sendRegVCode(String phoneNo, String vcode) throws SerialException{

		Map<String, Object> map = new HashMap<String, Object>();
		
		try{
			TaobaoClient client = new DefaultTaobaoClient("http://gw.api.taobao.com/router/rest", "23265320", "7a74fc97c6d76eecaa021b3c0b4c7fe3");
			AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
			req.setExtend("513721198810031378");
			req.setSmsType("normal");
			req.setSmsFreeSignName("注册验证");
			req.setSmsParam("{\"code\":\""+vcode+"\",\"product\":\"兜蜂网\"}");
			req.setRecNum(phoneNo);
			req.setSmsTemplateCode("SMS_2175701");
			AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
			
			Map r = (Map) JSON.parse(rsp.getBody());
			r = (Map) r.get("alibaba_aliqin_fc_sms_num_send_response");
			r = (Map) r.get("result");
			
			map.put("flag", r.get("success"));
			map.put("model", r.get("model"));
		}catch(Exception e){
			e.printStackTrace();
			throw new ServiceException("系统发送验证码失败，请重新尝试");
		}
		
		return map;
	}
	
	@SuppressWarnings("rawtypes")
	public static Map<String, Object> sendRegPassword(String phoneNo, String password) throws ServiceException{

		Map<String, Object> map = new HashMap<String, Object>();
		
		try{
			TaobaoClient client = new DefaultTaobaoClient("http://gw.api.taobao.com/router/rest", "23265320", "7a74fc97c6d76eecaa021b3c0b4c7fe3");
			AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
			req.setExtend("513721198810031378");
			req.setSmsType("normal");
			req.setSmsFreeSignName("注册验证");
			req.setSmsParam("{\"code\":\""+phoneNo+"\",\"product\":\""+password+"\"}");
			req.setRecNum(phoneNo);
			req.setSmsTemplateCode("SMS_2655114");
			AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
			
			Map r = (Map) JSON.parse(rsp.getBody());
			r = (Map) r.get("alibaba_aliqin_fc_sms_num_send_response");
			r = (Map) r.get("result");
			
			map.put("flag", r.get("success"));
			map.put("model", r.get("model"));
		}catch(Exception e){
			e.printStackTrace();
			throw new ServiceException("系统生成密码失败，请重新尝试");
		}
		
		return map;
	}
	
	@SuppressWarnings("rawtypes")
	public static void main(String[] args){
		
		String msg = "{\"alibaba_aliqin_fc_sms_num_send_response\":{\"result\":{\"model\":\"100235397715^1100435060143\",\"success\":true},\"request_id\":\"1475v0h5inxuf\"}}";
		
		Map map = (Map) JSON.parse(msg);
		map = (Map) map.get("alibaba_aliqin_fc_sms_num_send_response");
		map = (Map) map.get("result");
		
		//boolean flag = (Boolean) map.get("success");
		String model = (String) map.get("model");
		
		System.out.println(model);
		
	}
	
}
