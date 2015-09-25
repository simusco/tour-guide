package com.moma.trip.soap.ctrip.service.impl;

import java.io.File;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

import com.moma.trip.soap.ctrip.Test;
import com.moma.trip.soap.ctrip.base.HttpAccessAdapter;
import com.moma.trip.soap.ctrip.freemarker.TemplateMapper;
import com.moma.trip.soap.ctrip.service.HotelRequestService;
import com.moma.trip.soap.ctrip.utils.ConfigData;
import com.moma.trip.soap.ctrip.utils.HotelConstants;
import com.moma.trip.soap.ctrip.utils.SignatureUtils;

public class HotelRequestServiceImpl implements HotelRequestService {

	@SuppressWarnings("static-access")
	@Override
	public void searchHotel(String hotelCityCode, String areaID, String hotelName, String hotelStarRate)
			throws Exception {

		String templateDir = Test.class.getResource(HotelConstants.TEMPLATE_DIR).getPath();
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

	@Override
	public Object getHotelDescriptiveInfo() throws Exception {
		
		String templateDir = Test.class.getResource(HotelConstants.TEMPLATE_DIR).getPath();
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
	public Object getHotelRatePlan() throws Exception {
		
		String templateDir = Test.class.getResource(HotelConstants.TEMPLATE_DIR).getPath();
		String timestamp = SignatureUtils.GetTimeStamp();

		Map<String, Object> root = new HashMap<String, Object>();
		root.put("allianceId", ConfigData.AllianceId);
		root.put("sid", ConfigData.SId);
		root.put("timestamp", timestamp);
		root.put("requestType", HotelConstants.REQUEST_TYPE_HOTEL_RATE_PLAN);
		root.put("signature", SignatureUtils.CalculationSignature(timestamp, ConfigData.AllianceId,
				ConfigData.SecretKey, ConfigData.SId, HotelConstants.REQUEST_TYPE_HOTEL_RATE_PLAN));

		TemplateMapper conf = new TemplateMapper();
		String request = conf.getTemplateMapping(new File(templateDir), "HotelRatePlan.xml", root);

		HttpAccessAdapter httpAccessAdapter = new HttpAccessAdapter();
		String response = httpAccessAdapter.SendRequestToUrl(request, HotelConstants.URL_HOTEL_RATE_PLAN, null);
		System.out.println(response);
		
		return null;
		
	}

}
