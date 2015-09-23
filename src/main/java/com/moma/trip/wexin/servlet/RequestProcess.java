package com.moma.trip.wexin.servlet;

import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.moma.trip.wexin.po.TextMessage;
import com.moma.trip.wexin.util.XMLMessageParser;

public class RequestProcess {

	public String process(HttpServletRequest request) {

		String respMessage = null;
		try {
			String respContent = "请求处理异常，请稍候尝试！";

			Map<String, String> requestMap = XMLMessageParser.parseXml(request);
			String fromUserName = requestMap.get("FromUserName");
			String toUserName = requestMap.get("ToUserName");
			String msgType = requestMap.get("MsgType");

			TextMessage textMessage = new TextMessage();
			textMessage.setToUserName(fromUserName);
			textMessage.setFromUserName(toUserName);
			textMessage.setCreateTime(new Date().getTime());
			textMessage.setMsgType(XMLMessageParser.RESP_MESSAGE_TYPE_TEXT);
			textMessage.setFuncFlag(0);

			// 文本消息
			if (msgType.equals(XMLMessageParser.REQ_MESSAGE_TYPE_TEXT)) {
				respContent = "您发送的是文本消息！";
			}
			// 图片消息
			else if (msgType.equals(XMLMessageParser.REQ_MESSAGE_TYPE_IMAGE)) {
				respContent = "您发送的是图片消息！";
			}
			// 地理位置消息
			else if (msgType.equals(XMLMessageParser.REQ_MESSAGE_TYPE_LOCATION)) {
				respContent = "您发送的是地理位置消息！";
			}
			// 链接消息
			else if (msgType.equals(XMLMessageParser.REQ_MESSAGE_TYPE_VIDEO)) {
				respContent = "您发送的是视屏！";
			}
			else if(msgType.equals(XMLMessageParser.REQ_MESSAGE_TYPE_SHORTVIDEO)){
				respContent = "你发送的是小视屏!";
			}
			// 音频消息
			else if (msgType.equals(XMLMessageParser.REQ_MESSAGE_TYPE_EVENT)) {
				String eventType = requestMap.get("Event");
				// 订阅
				if (eventType.equals(XMLMessageParser.EVENT_TYPE_SUBSCRIBE)) {
					respContent = "感谢您的关注！";
				}

				else if (eventType.equals(XMLMessageParser.EVENT_TYPE_UNSUBSCRIBE)) {
					// TODO 取消订阅后用户再收不到公众号发送的消息，因此不需要回复消息
				}

				else if (eventType.equals(XMLMessageParser.EVENT_TYPE_CLICK)) {
					// TODO 自定义菜单权没有开放，暂不处理该类消息
				}
			}else{
				respContent = "你发送的内容，我还不认识哦！";
			}
			textMessage.setContent(respContent);
			respMessage = XMLMessageParser.textMessageToXml(textMessage);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return respMessage;
	}

}
