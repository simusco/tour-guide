package com.moma.trip.wechat.util;

import java.util.concurrent.ConcurrentHashMap;

public class CacheUserLocation {

	private static Object lock = new Object();
	private static CacheUserLocation mInstance = null;
	private ConcurrentHashMap<String, String> cacheMap = null;

	private CacheUserLocation() {
		cacheMap = new ConcurrentHashMap<String, String>();
	}

	public static CacheUserLocation getInstance() {
		if (mInstance == null) {
			synchronized (lock) {
				if (mInstance == null) {
					mInstance = new CacheUserLocation();
				}
			}
		}
		return mInstance;
	}

	public void cache(String userName, String location){
		cacheMap.put(userName, location);
	}
	
	public String getLocation(String userName){
		return cacheMap.get(userName);
	}
	
}
