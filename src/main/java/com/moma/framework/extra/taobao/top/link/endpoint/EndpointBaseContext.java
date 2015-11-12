package com.moma.framework.extra.taobao.top.link.endpoint;

import java.net.SocketAddress;
import java.util.Map;

import com.moma.framework.extra.taobao.top.link.channel.ChannelContext;

public class EndpointBaseContext {
	protected ChannelContext channelContext;
	protected Identity messageFrom;
	protected Message origin;

	public EndpointBaseContext(ChannelContext channelContext, Identity messageFrom, Message origin) {
		this.channelContext = channelContext;
		this.messageFrom = messageFrom;
		this.origin = origin;
	}

	public SocketAddress getRemoteAddress() {
		return this.channelContext.getSender().getRemoteAddress();
	}

	public Identity getMessageFrom() {
		return this.messageFrom;
	}

	public Map<String, Object> getMessage() {
		return this.origin.content;
	}

	public void disconnectChannel(String reason) {
		this.channelContext.getSender().close(reason);
	}
}
