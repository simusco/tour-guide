package com.moma.trip.wexin.util;

import java.io.InputStream;
import java.io.Writer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import com.moma.trip.wexin.po.Article;
import com.moma.trip.wexin.po.MusicMessage;
import com.moma.trip.wexin.po.NewsMessage;
import com.moma.trip.wexin.po.TextMessage;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.core.util.QuickWriter;
import com.thoughtworks.xstream.io.HierarchicalStreamWriter;
import com.thoughtworks.xstream.io.xml.PrettyPrintWriter;
import com.thoughtworks.xstream.io.xml.XppDriver;

public class XMLMessageParser {

	public static final String RESP_MESSAGE_TYPE_TEXT = "text";

	public static final String RESP_MESSAGE_TYPE_MUSIC = "music";

	public static final String RESP_MESSAGE_TYPE_NEWS = "news";

	public static final String REQ_MESSAGE_TYPE_TEXT = "text";

	public static final String REQ_MESSAGE_TYPE_IMAGE = "image";

	public static final String REQ_MESSAGE_TYPE_LINK = "link";
	
	public static final String REQ_MESSAGE_TYPE_VIDEO = "video";
	
	public static final String REQ_MESSAGE_TYPE_SHORTVIDEO = "shortvideo";

	public static final String REQ_MESSAGE_TYPE_LOCATION = "location";

	public static final String REQ_MESSAGE_TYPE_VOICE = "voice";

	public static final String REQ_MESSAGE_TYPE_EVENT = "event";

	public static final String EVENT_TYPE_SUBSCRIBE = "subscribe";

	public static final String EVENT_TYPE_UNSUBSCRIBE = "unsubscribe";

	public static final String EVENT_TYPE_CLICK = "CLICK";

	public static final String EVENT_TYPE_SCAN = "SCAN";

	@SuppressWarnings("unchecked")
	public static Map<String, String> parseXml(HttpServletRequest request) throws Exception {

		Map<String, String> map = new HashMap<String, String>();

		InputStream inputStream = request.getInputStream();

		SAXReader reader = new SAXReader();
		Document document = reader.read(inputStream);
		Element root = document.getRootElement();
		List<Element> elementList = root.elements();

		for (Element e : elementList)
			map.put(e.getName(), e.getText());

		inputStream.close();
		inputStream = null;

		return map;
	}

	public static String textMessageToXml(TextMessage textMessage) {
		xstream.alias("xml", textMessage.getClass());
		return xstream.toXML(textMessage);
	}

	public static String musicMessageToXml(MusicMessage musicMessage) {
		xstream.alias("xml", musicMessage.getClass());
		return xstream.toXML(musicMessage);
	}
 
	public static String newsMessageToXml(NewsMessage newsMessage) {
		xstream.alias("xml", newsMessage.getClass());
		xstream.alias("item", new Article().getClass());
		return xstream.toXML(newsMessage);
	}

	private static XStream xstream = new XStream(new XppDriver() {
		public HierarchicalStreamWriter createWriter(Writer out) {
			return new PrettyPrintWriter(out) {
				boolean cdata = true;
					
				public void startNode(String name, Class clazz) {
					super.startNode(name, clazz);
				}
					
				protected void writeText(QuickWriter writer, String text) {
					if (cdata) {
						 writer.write("<![CDATA[");
						 writer.write(text);
						 writer.write("]]>");
					} else {
						 writer.write(text);
					}
					 
				}
			};
		}
	});
}
 