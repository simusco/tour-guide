package com.moma.framework.extra.ctrip.utils;

import java.io.IOException;
import java.net.URLEncoder;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;

import com.alibaba.fastjson.JSON;

public class TestUtils {
	
	public String getJSONParams(Integer productId, Integer resourceId, String start, String end) throws NoSuchAlgorithmException, Exception{
		
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
		Map<String,Object> params = new HashMap<String, Object>();
		params.put("AllianceID",ConfigData.AllianceId);
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

	public static void main(String[] args) throws NoSuchAlgorithmException, Exception {
		
		TestUtils testUtils = new TestUtils();
		CloseableHttpClient httpclient = HttpClientBuilder.create().build();
		
		try {
			String p = URLEncoder.encode(testUtils.getJSONParams(103060, 1659388, "2015-11-13T11:27:25", "2015-11-23T11:27:25"), "GB2312");
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
			
			System.out.println(content);
			
			Map map = (Map) JSON.parse(content);
			map = (Map) JSON.parse((String)map.get("ResponseBody"));
			
			List inventoryList = (List) map.get("ResourcePriceAndInventoryList");
			for(int i=0;i<inventoryList.size();i++){
				Map inventory = (Map) inventoryList.get(i);
				
				List dailyList = (List) inventory.get("ResourcePriceAndInventoryDailyList");
				
				for(int j=0;j<dailyList.size();j++){
					Map daily = (Map) dailyList.get(j);
					
					System.out.println(daily.get("MarketPrice"));
					System.out.println(daily.get("Date"));
					System.out.println(daily.get("Price"));
					System.out.println(daily.get("InventoryNum"));
					System.out.println(daily.get("MaxQuantity"));
					System.out.println(daily.get("CostPrice"));
					
					System.out.println("---------------------------------------");
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
