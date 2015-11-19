package com.moma.framework.extra.ctrip.xml;

import java.math.BigDecimal;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.Element;

import com.moma.framework.extra.ctrip.dto.HotelAvail;

public class HotelAvailParser extends CtripXmlParser<HotelAvail>{

	public HotelAvailParser(String xml) {
		super(xml);
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
				Element rs = hotelResponse.element("OTA_HotelAvailRS");
				
				return rs;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public HotelAvail parser() {
		
		HotelAvail ha = new HotelAvail();
		
		try {
			if(getRS() == null) 
				return null;
			
			Element roomStays = getRS().element("RoomStays");
			Element roomStay = roomStays.element("RoomStay");
			
			String availabilityStatus = roomStay.attributeValue("AvailabilityStatus");
			Element total = roomStay.element("Total");
			if(total != null){
				ha.setAmountBeforeTax(new BigDecimal(total.attributeValue("AmountBeforeTax")));
				ha.setCurrencyCode(total.attributeValue("CurrencyCode"));
			}
			ha.setAvailabilityStatus(availabilityStatus);
			
			Element errors = getRS().element("Errors");
			List<Element> elist = null;
			if(errors != null && ((elist = errors.elements("error")) != null)){
				for(int i=0; i < elist.size(); i++){
					ha.getErrors().add(elist.get(i).getTextTrim());
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return ha;
	}
	
}
