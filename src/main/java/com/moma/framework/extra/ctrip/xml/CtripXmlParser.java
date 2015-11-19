package com.moma.framework.extra.ctrip.xml;

import java.io.ByteArrayInputStream;

import org.dom4j.Document;
import org.dom4j.io.SAXReader;

public abstract class CtripXmlParser<T> {
	
	private String xml = "";

	public CtripXmlParser(String xml){
		this.xml = xml;
		System.out.println(xml);
	}
	
	Document getDoc() throws Exception{
		SAXReader reader = new SAXReader();
		return reader.read(new ByteArrayInputStream(xml.getBytes("UTF-8")));
	}
	
	public abstract T parser();
	
}
