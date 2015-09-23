package com.moma.trip.weixin.service;

import java.util.List;

import com.moma.trip.weixin.po.TouristAttraction;

public interface TouristAttractionService {
	
	List<TouristAttraction> getTouristAttractionList(Double latitude, Double longitude, Double radius);
	
}
