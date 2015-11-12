package com.moma.framework.extra.taobao.top.link.remoting;

import org.jboss.netty.channel.ChannelPipeline;

import com.moma.framework.extra.taobao.top.link.LoggerFactory;
import com.moma.framework.extra.taobao.top.link.channel.tcp.TcpServerChannel;

public class NettyRemotingTcpServerChannel extends TcpServerChannel {

	public NettyRemotingTcpServerChannel(int port) {
		super(port);
	}
	
	public NettyRemotingTcpServerChannel(LoggerFactory factory, int port) {
		super(factory, port);
	}

	@Override
	protected void prepareCodec(ChannelPipeline pipeline) {
		pipeline.addLast("decoder", new NettyRemotingDecoder());
	}
}
