package com.moma.framework;

public class ServiceException extends RuntimeException{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2006318027625586321L;
	private String code;
	
	public ServiceException(String msg) {
		super(msg);
	}
	
	public ServiceException(String msg, String code) {
		super(msg);
		this.code = code;
	}

	public String getCode() {
		return code;
	}
	
}
