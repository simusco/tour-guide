package com.moma.trip.weixin.service.impl;

import java.util.List;

import com.moma.trip.weixin.mapper.TouristAttractionMapper;
import com.moma.trip.weixin.po.TouristAttraction;
import com.moma.trip.weixin.service.TouristAttractionService;

public class TouristAttractionServiceImpl implements TouristAttractionService {

	private TouristAttractionMapper touristAttractionMapper;

	@Override
	public List<TouristAttraction> getTouristAttractionList(Double latitude, Double longitude, Double radius) {

		return touristAttractionMapper.getTouristAttractionList(latitude, longitude, radius);
	}

	public TouristAttractionMapper getTouristAttractionMapper() {
		return touristAttractionMapper;
	}

	public void setTouristAttractionMapper(TouristAttractionMapper touristAttractionMapper) {
		this.touristAttractionMapper = touristAttractionMapper;
	}

}
