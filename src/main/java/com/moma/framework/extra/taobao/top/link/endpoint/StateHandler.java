package com.moma.framework.extra.taobao.top.link.endpoint;

import com.moma.framework.extra.taobao.top.link.LinkException;

public interface StateHandler {
	public void onConnect(EndpointProxy endpoint, ChannelSenderWrapper sender, Identity connectingIdentity) throws LinkException;
}