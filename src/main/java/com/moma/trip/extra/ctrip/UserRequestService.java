package com.moma.trip.extra.ctrip;

public interface UserRequestService {

	/*
	 * 根据我们系统的USERid,获取携程的userId.
	 */
	public String getUserUniqueID(String userId) throws Exception;
	
}
