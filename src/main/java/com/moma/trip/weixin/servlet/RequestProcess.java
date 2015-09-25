package com.moma.trip.weixin.servlet;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.moma.trip.weixin.po.TextMessage;
import com.moma.trip.weixin.po.TouristAttraction;
import com.moma.trip.weixin.service.TouristAttractionService;
import com.moma.trip.weixin.util.CacheUserLocation;
import com.moma.trip.weixin.util.ServletBeanUtil;
import com.moma.trip.weixin.util.XMLMessageParser;

public class RequestProcess {

	public String process(HttpServletRequest request) {

		String respMessage = null;
		try {
			String respContent = "请求处理异常，请稍候尝试！";

			Map<String, String> requestMap = XMLMessageParser.parseXml(request);
			String fromUserName = requestMap.get("FromUserName");
			String toUserName = requestMap.get("ToUserName");
			String msgType = requestMap.get("MsgType");

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
					TextMessage textMessage = new TextMessage();
					textMessage.setToUserName(fromUserName);
					textMessage.setFromUserName(toUserName);
					textMessage.setCreateTime(new Date().getTime());
					textMessage.setMsgType(XMLMessageParser.RESP_MESSAGE_TYPE_TEXT);
					textMessage.setFuncFlag(0);
					textMessage.setContent("感谢你的关注!\n\n【攻略】给你提供出行方案，\n\n【导游】给你推送你目前所在定的景点讲解信息！");
					respMessage = XMLMessageParser.textMessageToXml(textMessage);
				}
				else if (eventType.equals(XMLMessageParser.EVENT_TYPE_UNSUBSCRIBE)) {
					// TODO 取消订阅后用户再收不到公众号发送的消息，因此不需要回复消息
				}
				else if (eventType.equals(XMLMessageParser.EVENT_TYPE_CLICK)) {
					if("BTN_TOUR_GUIDE".equals(requestMap.get("EventKey"))){
						/*MusicMessage musicMessage = new MusicMessage();
						musicMessage.setToUserName(fromUserName);
						musicMessage.setFromUserName(toUserName);
						musicMessage.setMsgType(XMLMessageParser.RESP_MESSAGE_TYPE_MUSIC);

						Music music = new Music();
						music.setDescription("这是我喜欢听的歌曲");
						music.setTitle("喜欢你");
						music.setHQMusicUrl("http://trip.tunnel.mobi/tour-guide/music/hz.mp3");
						music.setMusicUrl("http://trip.tunnel.mobi/tour-guide/music/hz.mp3");
						
						musicMessage.setMusic(music);
						
						respMessage = XMLMessageParser.musicMessageToXml(musicMessage);
						System.out.println(respMessage);*/
						
						TextMessage textMessage = new TextMessage();
						textMessage.setToUserName(fromUserName);
						textMessage.setFromUserName(toUserName);
						textMessage.setCreateTime(new Date().getTime());
						textMessage.setMsgType(XMLMessageParser.RESP_MESSAGE_TYPE_TEXT);
						textMessage.setFuncFlag(0);
						
						CacheUserLocation cacheLocation = CacheUserLocation.getInstance();
						String location = cacheLocation.getLocation(fromUserName);
						if(location == null){
							textMessage.setContent("没有获取到你的位置！");
						}else{
							TouristAttractionService service = 
									(TouristAttractionService) ServletBeanUtil.getBean(
											request.getSession().getServletContext(), 
											"weixin.touristAttractionService");
							
							String[] locs = location.split(",");
							List<TouristAttraction> touristAttractionList = 
									service.getTouristAttractionList(Double.valueOf(locs[0]), Double.valueOf(locs[1]), 0.5);
							
							if(touristAttractionList != null){
								textMessage.setContent("你当前所在位置"+location+",附近找到了"+touristAttractionList.size()+"个好地方！");
							}else{
								textMessage.setContent("你当前所在位置"+location+",附近啥都没有！");
							}
						}
						
						respMessage = XMLMessageParser.textMessageToXml(textMessage);
					}
				}
				//保存客户的位置
				else if (eventType.equals(XMLMessageParser.EVENT_TYPE_LOCATION)) {
					CacheUserLocation cacheLocation = CacheUserLocation.getInstance();
					cacheLocation.cache(fromUserName, requestMap.get("Latitude") + "," + requestMap.get("Longitude") + "," + requestMap.get("Precision"));
				}
			}else{
				TextMessage textMessage = new TextMessage();
				textMessage.setToUserName(fromUserName);
				textMessage.setFromUserName(toUserName);
				textMessage.setCreateTime(new Date().getTime());
				textMessage.setMsgType(XMLMessageParser.RESP_MESSAGE_TYPE_TEXT);
				textMessage.setFuncFlag(0);
				textMessage.setContent("你发送的内容，我还不认识哦！");
				respMessage = XMLMessageParser.textMessageToXml(textMessage);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return respMessage;
	}

}
