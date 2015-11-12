package com.moma.framework.extra.taobao.top.link.remoting;

import java.util.List;
import java.util.Map.Entry;

import com.moma.framework.extra.taobao.top.link.LoggerFactory;
import com.moma.framework.extra.taobao.top.link.channel.ChannelContext;
import com.moma.framework.extra.taobao.top.link.channel.ServerChannelSender;

public class SpringRemotingServerChannelHandler extends DefaultRemotingServerChannelHandler {
	private HandshakerBean handshaker;

	public SpringRemotingServerChannelHandler(LoggerFactory loggerFactory, HandshakerBean handshaker) {
		super(loggerFactory);
		this.handshaker = handshaker;
	}

	@SuppressWarnings("unchecked")
	@Override
	public void onConnect(ChannelContext context) throws Exception {
		if (this.handshaker == null)
			return;
		this.handshaker.onHandshake(
				(List<Entry<String, String>>) context.getMessage(),
				new Context((ServerChannelSender) context.getSender()));
	}

	public class Context implements ChannelContextBean {
		private ServerChannelSender sender;

		public Context(ServerChannelSender sender) {
			this.sender = sender;
		}

		public Object get(Object key) {
			return this.sender.getContext(key);
		}

		public void set(Object key, Object value) {
			this.sender.setContext(key, value);
		}

	}
}