package com.moma.framework.extra.taobao.top.link.endpoint;

import com.moma.framework.extra.taobao.top.link.LinkException;

public interface Identity {
	public Identity parse(Object data) throws LinkException;

	public void render(Object to);

	public boolean equals(Identity id);
}