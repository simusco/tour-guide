package com.moma.framework.extra.ctrip.xml;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.Node;
import org.springframework.stereotype.Component;

import com.moma.framework.extra.ctrip.dto.HotelRate;
import com.moma.framework.extra.ctrip.dto.HotelRatePlan;

public class HotelRatePlanParser extends CtripXmlParser<List<HotelRatePlan>>{
	
	public HotelRatePlanParser(String xml) {
		super(xml);
	}

	public List<HotelRatePlan> get(){
		return this.parser();
	}
	
	@SuppressWarnings("unchecked")
	public List<HotelRatePlan> parser(){
		List<HotelRatePlan> hotelRatePlanList = new ArrayList<HotelRatePlan>();
		
		try {
			Element hotelRatePlanRS = getRS();
			List<Element> ratePlans = hotelRatePlanRS.elements("RatePlans");
			for(int i=0;i<ratePlans.size();i++){
				HotelRatePlan hotelRatePlan = new HotelRatePlan();
				hotelRatePlan.setHotelCode(ratePlans.get(i).attributeValue("HotelCode"));
				
				List<Element> ratePlanList = ratePlans.get(i).elements("RatePlan");
				for(int j=0;j<ratePlanList.size();j++){
					Element ratePlan = ratePlanList.get(j);
					hotelRatePlan.setRatePlanCode(ratePlan.attributeValue("RatePlanCode"));
					
					List<Element> rateList = ratePlan.selectNodes("./*[name()='Rates']/*[name()='Rate']");
					hotelRatePlan.setRateList(getRateList(rateList));
				}
				
				hotelRatePlan.setSychTime(new Timestamp(new Date().getTime()));
				hotelRatePlanList.add(hotelRatePlan);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return hotelRatePlanList;
	}
	
	private List<HotelRate> getRateList(List<Element> rateList){
		List<HotelRate> rlist = new ArrayList<HotelRate>();
		
		for(int m=0;m<rateList.size();m++){
			Element rate = rateList.get(m);
			HotelRate r = new HotelRate();
			r.setStart(rate.attributeValue("Start"));
			r.setEnd(rate.attributeValue("End"));
			
			Node node = rate.selectSingleNode("./*[name()='BaseByGuestAmts']/*[name()='BaseByGuestAmt']");
			if(node.getNodeType() == Node.ELEMENT_NODE){
				Element baseByGuestAmt = (Element)node;
				r.setListPrice(baseByGuestAmt.attributeValue("ListPrice"));
				r.setAmountBeforeTax(baseByGuestAmt.attributeValue("AmountBeforeTax"));
			}
			
			Element mealsIncluded = rate.element("MealsIncluded");
			r.setMealsIncluded(mealsIncluded.attributeValue("Breakfast"));
			r.setNumberOfBreakfast(mealsIncluded.attributeValue("NumberOfBreakfast"));
			r.setSychTime(new Timestamp(new Date().getTime()));
			
			rlist.add(r);
		}
		
		return rlist;
	}
	
	protected Element getRS(){
		
		try {
			Document document = this.getDoc();
			Element response = document.getRootElement();
			Element header = response.element("Header");
			String resultCode = header.attribute("ResultCode").getValue();
			String currentCount = header.attribute("CurrentCount").getValue();
			
			if("Success".equals(resultCode) && Integer.parseInt(currentCount) > 0){
				Element hotelResponse = response.element("HotelResponse");
				Element hotelRatePlanRS = hotelResponse.element("OTA_HotelRatePlanRS");
				
				return hotelRatePlanRS;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	
}




















