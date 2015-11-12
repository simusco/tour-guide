package com.moma.framework.extra.taobao.top.link.channel.netty;

import org.jboss.netty.channel.Channel;

import com.moma.framework.extra.taobao.top.link.channel.ClientChannel;

public interface NettyClientChannel extends ClientChannel {
	public void setChannel(Channel channel);
}
