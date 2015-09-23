package com.moma.trip.weixin.mapper;

import java.util.List;

import com.moma.trip.weixin.po.TouristAttraction;

public interface TouristAttractionMapper {

	List<TouristAttraction> getTouristAttractionList(Double latitude, Double longitude, Double radius);
	
}
