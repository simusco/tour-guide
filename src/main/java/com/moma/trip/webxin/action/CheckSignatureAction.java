package com.moma.trip.webxin.action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;

import com.moma.framework.web.BaseSupportAction;
import com.moma.trip.webxin.util.SignUtil;

public class CheckSignatureAction extends BaseSupportAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7157384696125436603L;

	private String signature;
	private String timestamp;
	private String nonce;
	private String echostr;
	
	public String check() {

		if (SignUtil.checkSignature(signature, timestamp, nonce)) {
			this.write(echostr, null);
		}
		
		return null;
	}

	public String getSignature() {
		return signature;
	}

	public void setSignature(String signature) {
		this.signature = signature;
	}

	public String getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}

	public String getNonce() {
		return nonce;
	}

	public void setNonce(String nonce) {
		this.nonce = nonce;
	}

	public String getEchostr() {
		return echostr;
	}

	public void setEchostr(String echostr) {
		this.echostr = echostr;
	}

}
