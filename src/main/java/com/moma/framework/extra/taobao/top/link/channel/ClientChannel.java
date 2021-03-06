package com.moma.framework.extra.taobao.top.link.channel;

import java.net.URI;

import com.moma.framework.extra.taobao.top.link.ResetableTimer;

public interface ClientChannel extends ChannelSender {
	public boolean isConnected();
	public ChannelHandler getChannelHandler();
	public void setChannelHandler(ChannelHandler handler);
	public void setUri(URI uri);
	public URI getUri();
	public void setHeartbeatTimer(ResetableTimer timer);
}