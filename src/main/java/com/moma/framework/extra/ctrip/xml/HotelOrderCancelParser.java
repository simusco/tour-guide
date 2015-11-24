package com.moma.framework.extra.ctrip.xml;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.Node;

public class HotelOrderCancelParser  extends CtripXmlParser<Boolean>{

	public HotelOrderCancelParser(String xml) {
		super(xml);
	}

	public Boolean parser() {
		
		Boolean flag = false;
		try {
			Document document = this.getDoc();
			Element response = document.getRootElement();
			Element header = response.element("Header");
			String resultCode = header.attribute("ResultCode").getValue();
			String currentCount = header.attribute("CurrentCount").getValue();
			
			if("Success".equals(resultCode) && Integer.parseInt(currentCount) > 0){
				Node success = response.selectSingleNode("//*[name()='OTA_CancelRS']/*[name()='Success']");
				if(success != null){
					flag = true;
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return flag;
	}

}
