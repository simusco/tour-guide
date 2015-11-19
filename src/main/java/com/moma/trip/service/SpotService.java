package com.moma.trip.service;

import java.util.List;

import com.moma.trip.po.Spot;
import com.moma.trip.po.SpotPrice;

public interface SpotService {

	List<Spot> getKnownSpotList();

	Spot getSpot(String productId, String resourceId);

	void mantainSpotPrice(Spot spot, List<SpotPrice> priceList);

	List<SpotPrice> getSpotNewPrice(String string, String string2);

	Double getSpotPrice(String entryTime, String endTime, String code1, String code2);

}
