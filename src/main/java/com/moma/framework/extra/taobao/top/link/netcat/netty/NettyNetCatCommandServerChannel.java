package com.moma.framework.extra.taobao.top.link.netcat.netty;

import org.jboss.netty.channel.ChannelPipeline;
import org.jboss.netty.handler.codec.string.StringDecoder;

import com.moma.framework.extra.taobao.top.link.LoggerFactory;
import com.moma.framework.extra.taobao.top.link.channel.ChannelHandler;
import com.moma.framework.extra.taobao.top.link.channel.tcp.TcpServerChannel;
import com.moma.framework.extra.taobao.top.link.logging.LogUtil;
import com.moma.framework.extra.taobao.top.link.netcat.CommandProcessor;
import com.moma.framework.extra.taobao.top.link.netcat.NetCatCommandServerChannelHandler;

public class NettyNetCatCommandServerChannel extends TcpServerChannel {
	public NettyNetCatCommandServerChannel(int port) {
		this(LogUtil.getLoggerFactory(new Object()), port);
	}

	public NettyNetCatCommandServerChannel(LoggerFactory factory, int port) {
		super(factory, port);
		this.channelHandler = new NetCatCommandServerChannelHandler();
	}

	@Override
	public void setChannelHandler(ChannelHandler channelHandler) {
		return;
	}

	@Override
	protected void prepareCodec(ChannelPipeline pipeline) {
		pipeline.addLast("decoder", new StringDecoder());
	}

	public void addProcessor(CommandProcessor processor) {
		((NetCatCommandServerChannelHandler) this.channelHandler).addProcessor(processor);
	}
}
