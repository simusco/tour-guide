package com.moma.trip.wechat.mapper;

import java.util.List;

import com.moma.trip.wechat.po.TouristAttraction;

public interface TouristAttractionMapper {

	List<TouristAttraction> getTouristAttractionList(Double latitude, Double longitude, Double radius);
	
}
