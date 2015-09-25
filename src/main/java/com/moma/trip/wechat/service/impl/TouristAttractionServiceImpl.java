package com.moma.trip.wechat.service.impl;

import java.util.List;

import com.moma.trip.wechat.mapper.TouristAttractionMapper;
import com.moma.trip.wechat.po.TouristAttraction;
import com.moma.trip.wechat.service.TouristAttractionService;

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
