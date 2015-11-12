package com.moma.framework.extra.taobao.top.link.endpoint;

import java.util.Map;

import com.moma.framework.extra.taobao.top.link.LinkException;
import com.moma.framework.extra.taobao.top.link.channel.ChannelContext;

public class EndpointContext extends EndpointBaseContext {	
	private Endpoint endpoint;

	public EndpointContext(ChannelContext channelContext,
			Identity messageFrom,
			Message origin,
			Endpoint endpoint) {
		super(channelContext, messageFrom, origin);
		this.endpoint = endpoint;
	}

	public void reply(Map<String, Object> message) throws LinkException {
		this.endpoint.send(this.channelContext.getSender(), this.createMessage(message));
	}

	public void error(int statusCode, String statusPhase) throws LinkException {
		Message msg = this.createMessage(null);
		msg.statusCode = statusCode;
		msg.statusPhase = statusPhase;
		this.endpoint.send(this.channelContext.getSender(), msg);
	}

	private Message createMessage(Map<String, Object> message) {
		Message msg = new Message();
		// reply with incoming message's version
		msg.protocolVersion = this.origin.protocolVersion;
		msg.messageType = MessageType.SENDACK;
		msg.flag = this.origin.flag;
		msg.token = this.origin.token;
		msg.content = message;
		return msg;
	}
}
