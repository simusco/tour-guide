package com.moma.framework.extra.taobao.top.link.remoting;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.concurrent.atomic.AtomicInteger;

import org.springframework.beans.factory.FactoryBean;
import org.springframework.beans.factory.InitializingBean;

import com.moma.framework.extra.taobao.top.link.BufferManager;
import com.moma.framework.extra.taobao.top.link.LoggerFactory;
import com.moma.framework.extra.taobao.top.link.channel.ClientChannelSelector;
import com.moma.framework.extra.taobao.top.link.channel.ClientChannelSharedSelector;
import com.moma.framework.extra.taobao.top.link.logging.LogUtil;

// easy support spring bean
public class SpringServiceProxyBean implements FactoryBean, InitializingBean {
	private static Object initObject;
	private static ClientChannelSelector channelSelector;
	private static RemotingClientChannelHandler channelHandler;

	private URI uri;
	private Class<?> interfaceType;
	private int executionTimeout;
	private String format;

	public void setInterfaceName(String interfaceName) throws ClassNotFoundException {
		this.interfaceType = Class.forName(interfaceName);
	}

	public void setUri(String uri) throws URISyntaxException {
		this.uri = new URI(uri);
	}

	public void setExecutionTimeout(String executionTimeout) {
		this.executionTimeout = Integer.parseInt(executionTimeout);
	}

	public void setHeaders(HandshakingHeadersBean headersBean) {
		headersBean.setUri(this.uri);
	}

	public void setSerialization(String format) {
		this.format = format;
	}

	public Object getObject() throws Exception {
		DynamicProxy proxy = new DynamicProxy(this.uri, channelSelector, channelHandler);
		proxy.setSerializationFormat(this.format);
		proxy.setExecutionTimeout(this.executionTimeout);
		return proxy.create(this.interfaceType, this.uri);
	}

	public Class<?> getObjectType() {
		return this.interfaceType;
	}

	public boolean isSingleton() {
		return true;
	}

	public void afterPropertiesSet() throws Exception {
		init(this);
	}

	private synchronized static void init(Object obj) {
		if (initObject != null)
			return;
		// default set 2M max message size for client
		// TODO:change to growing buffer
		BufferManager.setBufferSize(1024 * 1024 * 2);
		LoggerFactory loggerFactory = LogUtil.getLoggerFactory(obj);
		channelSelector = new ClientChannelSharedSelector(loggerFactory);
		channelHandler = new RemotingClientChannelHandler(loggerFactory, new AtomicInteger(0));
		channelHandler.setSerializationFactory(SerializerUtil.getSerializationFactory(obj));
		initObject = new Object();
	}
}
