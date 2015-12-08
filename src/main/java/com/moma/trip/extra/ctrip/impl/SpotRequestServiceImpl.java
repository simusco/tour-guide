package com.moma.trip.extra.ctrip.impl;

import java.io.IOException;
import java.math.BigDecimal;
import java.net.URLEncoder;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.moma.framework.extra.ctrip.dto.SpotAvail;
import com.moma.framework.extra.ctrip.utils.ConfigData;
import com.moma.framework.extra.ctrip.utils.SignatureUtils;
import com.moma.framework.utils.HttpRequestUtils;
import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.extra.ctrip.SpotRequestService;
import com.moma.trip.po.Spot;
import com.moma.trip.po.SpotPrice;
import com.moma.trip.service.SpotService;

@Service("spotRequestService")
public class SpotRequestServiceImpl implements SpotRequestService {

	@Resource
	private SpotService spotService;
	
	//门票资源价格库查询 TicketResourcePriceAndInventory
	protected String getTicketResourcePriceAndInventoryJSONParams(Integer productId, Integer resourceId, String start, String end)
			throws NoSuchAlgorithmException, Exception {

		Map<String, Object> requestBody = new HashMap<String, Object>();
		requestBody.put("DistributionChannel", 9);
		requestBody.put("ProductID", productId);
		List<Map<String, Object>> itemList = new ArrayList<Map<String, Object>>();
		Map<String, Object> item = new HashMap<String, Object>();
		item.put("StartDate", start);
		item.put("EndDate", end);
		item.put("ResourceID", resourceId);
		itemList.add(item);
		requestBody.put("ResourcePriceAndInventoryRequestItemList", itemList);

		String timestamp = SignatureUtils.GetTimeStamp();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("AllianceID", ConfigData.AllianceId);
		params.put("SID", ConfigData.SId);
		params.put("ProtocolType", "1");
		params.put("TimeStamp", timestamp);
		params.put("Channel", "Vacations");
		params.put("Interface", "TicketResourcePriceAndInventory");
		params.put("RequestBody", JSON.toJSONString(requestBody));
		params.put("Signature", SignatureUtils.CalculationSignature(timestamp, ConfigData.AllianceId,
				ConfigData.SecretKey, ConfigData.SId, "TicketResourcePriceAndInventory"));

		return JSON.toJSONString(params);
	}
	
	//门票资源价格库查询 TicketResourcePriceAndInventory
	protected String getTicketOrderCanBookingJSONParams(
			Integer resourceId, 
			String useDate, 
			Integer useQuantity,
			Integer totalPrice)throws NoSuchAlgorithmException, Exception {

			Map<String, Object> requestBody = new HashMap<String, Object>();
			requestBody.put("DistributionChannel", 9);
			requestBody.put("OrderTotalPrice", totalPrice);
			requestBody.put("PromotionList", null);
			
			List<Map<String, Object>> itemList = new ArrayList<Map<String, Object>>();
			Map<String, Object> item = new HashMap<String, Object>();
			item.put("UseDate", useDate);
			item.put("UseQuantity", useQuantity);
			item.put("TotalPrice", totalPrice);
			item.put("ResourceID", resourceId);
			itemList.add(item);
			
			requestBody.put("ResourceCanBookingRequestItemList", itemList);

			String timestamp = SignatureUtils.GetTimeStamp();
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("AllianceID", ConfigData.AllianceId);
			params.put("SID", ConfigData.SId);
			params.put("ProtocolType", "0");
			params.put("TimeStamp", timestamp);
			params.put("Channel", "Vacations");
			params.put("Interface", "TicketOrderCanBooking");
			//params.put("RequestBody", JSON.toJSONString(requestBody));
			params.put("RequestBody", "<ResourceCanBookingRequest><DistributionChannel>9</DistributionChannel><OrderTotalPrice>120</OrderTotalPrice><ResourceCanBookingRequestItemList><ResourceCanBookingRequestItemDTO><ResourceID>227172</ResourceID><TotalPrice>120</TotalPrice><UseDate>2013-09-25T22:18:05+08:00</UseDate><UseQuantity>1</UseQuantity></ResourceCanBookingRequestItemDTO></ResourceCanBookingRequestItemList></ResourceCanBookingRequest>");
			params.put("Signature", SignatureUtils.CalculationSignature(timestamp, ConfigData.AllianceId,
					ConfigData.SecretKey, ConfigData.SId, "TicketOrderCanBooking"));

		return JSON.toJSONString(params);
	}
	
	public static void main(String[] args) {
		
		new SpotRequestServiceImpl()
			.ticketOrderCanBooking(227172, "2015-11-21", 1, 330);
		
	}
	
	public SpotAvail ticketOrderCanBooking(
			Integer resourceId, 
			String useDate, 
			Integer useQuantity,
			Integer totalPrice){
		
		try {
			String p = URLEncoder.encode(getTicketOrderCanBookingJSONParams(resourceId, useDate + "T22:18:05+08:00", useQuantity,  totalPrice), "GB2312");
			String url = "http://openapi.ctrip.com/vacations/OpenServer.ashx?RequestJson="+p;
			System.out.println(url);
			
			String content = HttpRequestUtils.doPostRequest(url);
			
			System.out.println("-------------------------------------------------------");
			System.out.println(content);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		//提示分销商不可用，等待CTRIP处理
		SpotAvail sv = new SpotAvail();
		sv.setCode(true);
		
		return sv;
	}

	@Override
	public void sychSpot(List<Spot> spotList, String startTime, String endTime) {
		for(int i=0;i<spotList.size();i++){
			Spot spot = spotList.get(i);
			sychSpot(Integer.parseInt(spot.getSpotCode()), Integer.parseInt(spot.getResourceCode()), startTime, endTime);
		}
	}
	
	public void sychSpot(Integer spotCode, Integer resourceCode, String startTime, String endTime){
		CloseableHttpClient httpclient = HttpClientBuilder.create().build();
		
		try {
			String p = URLEncoder.encode(getTicketResourcePriceAndInventoryJSONParams(spotCode, resourceCode, startTime + "T11:27:25", endTime+"T11:27:25"), "GB2312");
			String url = "http://openapi.ctrip.com/vacations/OpenServer.ashx?RequestJson="+p;
			
			HttpPost post = new HttpPost(url);

			ResponseHandler<byte[]> handler = new ResponseHandler<byte[]>() {
			    public byte[] handleResponse(
			        HttpResponse response) throws ClientProtocolException, IOException {
			        HttpEntity entity = response.getEntity();
			        if (entity != null) {
			            return EntityUtils.toByteArray(entity);
			        } else {
			            return null;
			        }
			    }
			};
			
			byte[] bytes = httpclient.execute(post, handler);
			String content = new String(bytes);
		
			Map map = (Map) JSON.parse(content);
			map = (Map) JSON.parse((String)map.get("ResponseBody"));
			
			List inventoryList = (List) map.get("ResourcePriceAndInventoryList");
			for(int i=0;i<inventoryList.size();i++){
				Map inventory = (Map) inventoryList.get(i);
				Integer productId = (Integer) inventory.get("ProductID");
				Integer resourceId = (Integer) inventory.get("ResourceID");
				
				Spot spot = spotService.getSpot(String.valueOf(productId), String.valueOf(resourceId));
				List<SpotPrice> priceList = new ArrayList<SpotPrice>();
				
				List dailyList = (List) inventory.get("ResourcePriceAndInventoryDailyList");
				
				for(int j=0;j<dailyList.size();j++){
					Map daily = (Map) dailyList.get(j);

					String start = (String) daily.get("Date");
					String[] ymd = start.split("-");
					
					SpotPrice spotPrice = new SpotPrice();
					spotPrice.setSpotPriceId(UUIDUtils.getUUID());
					spotPrice.setSpotId(spot.getSpotId());
					spotPrice.setYear(ymd[0]);
					spotPrice.setMonth(ymd[1]);
					spotPrice.setDay(ymd[2].split(" ")[0]);
					spotPrice.setCostPrice(new BigDecimal((Integer)daily.get("CostPrice")));
					spotPrice.setPrice((BigDecimal)daily.get("Price"));
					spotPrice.setInventoryNum((Integer)daily.get("InventoryNum"));
					spotPrice.setMaxQuantity((Integer)daily.get("MaxQuantity"));
					
					priceList.add(spotPrice);
				}
				
				spotService.mantainSpotPrice(spot, priceList, startTime, endTime);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
