package com.moma.framework.extra.ctrip.xml;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.Node;

import com.moma.framework.extra.ctrip.dto.HotelRes;

public class HotelResParser extends CtripXmlParser<HotelRes>{

	public HotelResParser(String xml) {
		super(xml);
	}

	@SuppressWarnings("unchecked")
	@Override
	public HotelRes parser() {
		HotelRes res = null;
		try {
			Document document = this.getDoc();
			Element response = document.getRootElement();
			Element header = response.element("Header");
			String resultCode = header.attribute("ResultCode").getValue();
			String currentCount = header.attribute("CurrentCount").getValue();
			
			if("Success".equals(resultCode) && Integer.parseInt(currentCount) > 0){
				List<Node> nodes = response.selectNodes("//*[name()='HotelReservationIDs']/*[name()='HotelReservationID']");
				if(nodes != null){
					Element hotelReservationID = (Element)nodes.get(0);
					res = new HotelRes();
					res.setResId(hotelReservationID.attributeValue("ResID_Value"));
					res.setResIdType(hotelReservationID.attributeValue("ResID_Type"));
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}
	
	public static void main(String[] args) throws Exception{
		
		InputStreamReader isr = new InputStreamReader(new FileInputStream("D:\\workspace\\tour-guide\\src\\main\\java\\com\\moma\\framework\\extra\\ctrip\\HotelResResponse.xml"));
		BufferedReader br = new BufferedReader(isr);
		
		String content = "";
		String line = null;
		
		try {
			while((line = br.readLine()) != null){
				content += line;
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		HotelRes res = new HotelResParser(content).parser();
		System.out.println(res);
		
	}

}
