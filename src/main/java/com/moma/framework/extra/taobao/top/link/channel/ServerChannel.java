package com.moma.framework.extra.taobao.top.link.channel;

import com.moma.framework.extra.taobao.top.link.Logger;
import com.moma.framework.extra.taobao.top.link.LoggerFactory;

public abstract class ServerChannel {
	protected LoggerFactory loggerFactory;
	protected Logger logger;
	protected ChannelHandler channelHandler;
	protected int port;
	protected int maxIdleTimeSeconds = 0;
	
	public ServerChannel(LoggerFactory factory, int port) {
		this.loggerFactory = factory;
		this.logger = factory.create(this);
		this.port = port;
	}
	
	public void setMaxIdleTimeSeconds(int value) {
		this.maxIdleTimeSeconds = value;
	}
	
	public void setChannelHandler(ChannelHandler channelHandler) {
		this.channelHandler = channelHandler;
	}
	
	public abstract void run();
	public abstract void stop();
}
