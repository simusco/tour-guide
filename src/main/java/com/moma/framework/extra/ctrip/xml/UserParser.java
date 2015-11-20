package com.moma.framework.extra.ctrip.xml;

import org.dom4j.Document;
import org.dom4j.Element;

public class UserParser extends CtripXmlParser<String>{

	public UserParser(String xml) {
		super(xml);
	}

	@Override
	public String parser() {
		
		String uniqueUID = null;
		try {
			Document document = this.getDoc();
			Element response = document.getRootElement();
			Element header = response.element("Header");
			String resultCode = header.attribute("ResultCode").getValue();
			String currentCount = header.attribute("CurrentCount").getValue();
			
			if("Success".equals(resultCode) && Integer.parseInt(currentCount) > 0){
				uniqueUID = response.element("UserResponse").element("UniqueUID").getTextTrim();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return uniqueUID;
	}

}
