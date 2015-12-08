package com.moma.trip.extra.ctrip.impl;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.moma.framework.extra.ctrip.base.HttpAccessAdapter;
import com.moma.framework.extra.ctrip.freemarker.TemplateMapper;
import com.moma.framework.extra.ctrip.utils.ConfigData;
import com.moma.framework.extra.ctrip.utils.HotelConstants;
import com.moma.framework.extra.ctrip.utils.SignatureUtils;
import com.moma.framework.extra.ctrip.xml.UserParser;
import com.moma.trip.extra.ctrip.UserRequestService;

@Service
public class UserRequestServiceImpl implements UserRequestService {

	@Override
	public String getUserUniqueID(String userId) throws Exception {

		String templateDir = this.getClass().getResource(HotelConstants.TEMPLATE_DIR).getPath();
		String timestamp = SignatureUtils.GetTimeStamp();

		Map<String, Object> root = new HashMap<String, Object>();
		root.put("allianceId", ConfigData.AllianceId);
		root.put("sid", ConfigData.SId);
		root.put("timestamp", timestamp);
		root.put("requestType", "OTA_UserUniqueID");
		root.put("signature", SignatureUtils.CalculationSignature(timestamp, ConfigData.AllianceId,
				ConfigData.SecretKey, ConfigData.SId, "OTA_UserUniqueID"));
		root.put("userId", userId);

		TemplateMapper conf = new TemplateMapper();
		String request = conf.getTemplateMapping(new File(templateDir), "UniqueID.xml", root);

		String response = HttpAccessAdapter.SendRequestToUrl(request, HotelConstants.URL_USER_UNIQUE_ID, null);
		System.out.println(response);
		
		return new UserParser(response).parser();
	}
	
	public static void main(String[] args) throws Exception{
		
		String id = new UserRequestServiceImpl().getUserUniqueID("bdfcbc949c3f44329b17283f7d4bfd81");
		
		System.out.println(id);
		
	}

}
