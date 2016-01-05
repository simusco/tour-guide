package com.moma.trip.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.MarketActivity;
import com.moma.trip.po.Present;
import com.moma.trip.po.PresentAnalye;

@Repository
public interface MarketActivityMapper {

	MarketActivity getMarketActivityById(String activityId);

	void savePresent(Present present);

	void deletePresentByActivityId(String activityId);

	List<PresentAnalye> analyzeByActivityId(String activityId);

	List<MarketActivity> getActivityPageList();

}
