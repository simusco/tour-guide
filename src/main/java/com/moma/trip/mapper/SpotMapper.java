package com.moma.trip.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.Spot;
import com.moma.trip.po.SpotPrice;

@Repository
public interface SpotMapper {

	List<Spot> getKnownSpotList();

	Spot getSpot(String productId, String resourceId);

	void deleteSpotPrice(String spotId, String startTime, String endTime);

	void saveSpotPrice(SpotPrice spotPrice);

	List<SpotPrice> getSpotNewPrice(String code1, String code2);

	Double getSpotPrice(String entryTime, String endTime, String code1, String code2);

}
