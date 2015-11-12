package com.moma.framework.extra.taobao.top.link.endpoint.protocol;

import com.moma.framework.extra.taobao.top.link.endpoint.Message;
import com.moma.framework.extra.taobao.top.link.endpoint.MessageIO.MessageEncoder;

public interface MessageEncoderFactory {
	public MessageEncoder get(Message message);
}