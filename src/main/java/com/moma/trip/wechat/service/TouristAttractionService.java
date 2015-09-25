package com.moma.trip.wechat.service;

import java.util.List;

import com.moma.trip.wechat.po.TouristAttraction;

public interface TouristAttractionService {
	
	List<TouristAttraction> getTouristAttractionList(Double latitude, Double longitude, Double radius);
	
}
