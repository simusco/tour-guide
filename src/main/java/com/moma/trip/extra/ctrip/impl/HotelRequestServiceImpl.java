package com.moma.trip.extra.ctrip.impl;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.moma.framework.extra.ctrip.base.HttpAccessAdapter;
import com.moma.framework.extra.ctrip.dto.HotelAvail;
import com.moma.framework.extra.ctrip.dto.HotelRatePlan;
import com.moma.framework.extra.ctrip.freemarker.TemplateMapper;
import com.moma.framework.extra.ctrip.utils.ConfigData;
import com.moma.framework.extra.ctrip.utils.HotelConstants;
import com.moma.framework.extra.ctrip.utils.SignatureUtils;
import com.moma.framework.extra.ctrip.xml.HotelAvailParser;
import com.moma.framework.extra.ctrip.xml.HotelRatePlanParser;
import com.moma.trip.extra.ctrip.HotelRequestService;
import com.moma.trip.mapper.HotelMapper;
import com.moma.trip.po.Hotel;
import com.moma.trip.service.HotelService;

@Service("hotelRequestService")
public class HotelRequestServiceImpl implements HotelRequestService {
	
	@Resource
	private HotelMapper hotelMapper;
	
	@Resource
	private HotelService hotelService;
	
	@SuppressWarnings("static-access")
	@Override
	public void searchHotel(String hotelCityCode, String areaID, String hotelName, String hotelStarRate)
			throws Exception {

		String templateDir = this.getClass().getResource(HotelConstants.TEMPLATE_DIR).getPath();
		String timestamp = SignatureUtils.GetTimeStamp();

		Map<String, Object> root = new HashMap<String, Object>();
		root.put("allianceId", ConfigData.AllianceId);
		root.put("sid", ConfigData.SId);
		root.put("timestamp", timestamp);
		root.put("requestType", HotelConstants.REQUEST_TYPE_HOTEL_SEARCH);
		root.put("signature", SignatureUtils.CalculationSignature(timestamp, ConfigData.AllianceId,
				ConfigData.SecretKey, ConfigData.SId, HotelConstants.REQUEST_TYPE_HOTEL_SEARCH));
		root.put("hotelCityCode", hotelCityCode);
		root.put("areaID", areaID);
		root.put("hotelName", hotelName);
		root.put("hotelStarRate", hotelStarRate);

		TemplateMapper conf = new TemplateMapper();
		String request = conf.getTemplateMapping(new File(templateDir), "HotelSearch.xml", root);

		HttpAccessAdapter httpAccessAdapter = new HttpAccessAdapter();
		String response = httpAccessAdapter.SendRequestToUrl(request, HotelConstants.URL_HOTEL_SEARCH, null);
		System.out.println(response);
	}

	@SuppressWarnings("static-access")
	@Override
	public Object getHotelDescriptiveInfo() throws Exception {
		
		String templateDir = this.getClass().getResource(HotelConstants.TEMPLATE_DIR).getPath();
		String timestamp = SignatureUtils.GetTimeStamp();

		Map<String, Object> root = new HashMap<String, Object>();
		root.put("allianceId", ConfigData.AllianceId);
		root.put("sid", ConfigData.SId);
		root.put("timestamp", timestamp);
		root.put("requestType", HotelConstants.REQUEST_TYPE_HOTEL_DESCRIPTIVE_INFO);
		root.put("signature", SignatureUtils.CalculationSignature(timestamp, ConfigData.AllianceId,
				ConfigData.SecretKey, ConfigData.SId, HotelConstants.REQUEST_TYPE_HOTEL_DESCRIPTIVE_INFO));

		TemplateMapper conf = new TemplateMapper();
		String request = conf.getTemplateMapping(new File(templateDir), "HotelDescriptiveInfo.xml", root);

		HttpAccessAdapter httpAccessAdapter = new HttpAccessAdapter();
		String response = httpAccessAdapter.SendRequestToUrl(request, HotelConstants.URL_HOTEL_DESCRIPTIVE_INFO, null);
		System.out.println(response);
		
		return null;
	}

	@SuppressWarnings("static-access")
	@Override
	public void sychHotelRatePlan(List<Hotel> hotelList, String start, String end) throws Exception {
		String templateDir = this.getClass().getResource(HotelConstants.TEMPLATE_DIR).getPath();
		String timestamp = SignatureUtils.GetTimeStamp();

		Map<String, Object> root = new HashMap<String, Object>();
		root.put("allianceId", ConfigData.AllianceId);
		root.put("sid", ConfigData.SId);
		root.put("timestamp", timestamp);
		root.put("requestType", HotelConstants.REQUEST_TYPE_HOTEL_RATE_PLAN);
		root.put("signature", SignatureUtils.CalculationSignature(timestamp, ConfigData.AllianceId,
				ConfigData.SecretKey, ConfigData.SId, HotelConstants.REQUEST_TYPE_HOTEL_RATE_PLAN));
		root.put("hotelList", hotelList);
		root.put("start", start);
		root.put("end", end);

		TemplateMapper conf = new TemplateMapper();
		String request = conf.getTemplateMapping(new File(templateDir), "HotelRatePlan.xml", root);

		HttpAccessAdapter httpAccessAdapter = new HttpAccessAdapter();
		String response = httpAccessAdapter.SendRequestToUrl(request, HotelConstants.URL_HOTEL_RATE_PLAN, null);
		System.out.println(response);
		List<HotelRatePlan> list = new HotelRatePlanParser(response).get();
		//持久化到数据库
		hotelService.saveHotelRatePlan(list, start, end);
	}
	
	@SuppressWarnings("static-access")
	@Override
	public HotelAvail hotelAvail(String hotelCode, String ratePlanCode, String start, String end, int quantity,
			String lateArrivalTime) throws Exception {

		String templateDir = this.getClass().getResource(HotelConstants.TEMPLATE_DIR).getPath();
		String timestamp = SignatureUtils.GetTimeStamp();

		Map<String, Object> root = new HashMap<String, Object>();
		root.put("allianceId", ConfigData.AllianceId);
		root.put("sid", ConfigData.SId);
		root.put("timestamp", timestamp);
		root.put("requestType", "OTA_HotelAvail");
		root.put("signature", SignatureUtils.CalculationSignature(timestamp, ConfigData.AllianceId,
				ConfigData.SecretKey, ConfigData.SId, "OTA_HotelAvail"));
		root.put("hotelCode", hotelCode);
		root.put("ratePlanCode", ratePlanCode);
		root.put("start", start);
		root.put("end", end);
		root.put("quantity", quantity);
		root.put("lateArrivalTime", lateArrivalTime);

		TemplateMapper conf = new TemplateMapper();
		String request = conf.getTemplateMapping(new File(templateDir), "HotelAvail.xml", root);

		HttpAccessAdapter httpAccessAdapter = new HttpAccessAdapter();
		String response = httpAccessAdapter.SendRequestToUrl(request, HotelConstants.URL_HOTEL_AVAIL, null);
		System.out.println(response);
		
		return new HotelAvailParser(response).parser();
	}

}
