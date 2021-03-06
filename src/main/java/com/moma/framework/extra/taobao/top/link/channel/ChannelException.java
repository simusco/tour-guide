package com.moma.framework.extra.taobao.top.link.channel;

import com.moma.framework.extra.taobao.top.link.LinkException;

public class ChannelException extends LinkException {

	private static final long serialVersionUID = 3556204532218058452L;

	public ChannelException(String message) {
		super(message);
	}

	public ChannelException(String message, Exception innerException) {
		super(message, innerException);
	}
	
	public ChannelException(String message, Throwable innerException) {
		super(message, innerException);
	}
}
