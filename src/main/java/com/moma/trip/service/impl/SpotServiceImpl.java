package com.moma.trip.service.impl;

import java.util.Calendar;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.moma.trip.mapper.SpotMapper;
import com.moma.trip.po.Spot;
import com.moma.trip.po.SpotPrice;
import com.moma.trip.service.SpotService;

@Service("spotService")
public class SpotServiceImpl implements SpotService {

	@Resource
	private SpotMapper spotMapper;
	
	@Override
	public List<Spot> getKnownSpotList() {

		return spotMapper.getKnownSpotList();
	}

	@Override
	public Spot getSpot(String productId, String resourceId) {
		return spotMapper.getSpot(productId, resourceId);
	}

	@Transactional(propagation=Propagation.REQUIRED)
	@Override
	public void mantainSpotPrice(Spot spot, List<SpotPrice> priceList) {

		spotMapper.deleteSpotPrice(spot.getSpotId());
		if(priceList != null){
			for(int i=0;i<priceList.size();i++){
				SpotPrice spotPrice = priceList.get(i);
				Calendar c = Calendar.getInstance();
				c.set(
					Integer.parseInt(spotPrice.getYear()), 
					Integer.parseInt(spotPrice.getMonth()) - 1, 
					Integer.parseInt(spotPrice.getDay())
				);
				spotPrice.setDate(c.getTime());
				
				spotMapper.saveSpotPrice(spotPrice);
			}
		}
		
	}

	@Override
	public List<SpotPrice> getSpotNewPrice(String code1, String code2) {
		return spotMapper.getSpotNewPrice(code1, code2);
	}

	@Override
	public Double getSpotPrice(String entryTime, String endTime, String code1, String code2) {
		return spotMapper.getSpotPrice(entryTime, endTime, code1, code2);
	}

}
