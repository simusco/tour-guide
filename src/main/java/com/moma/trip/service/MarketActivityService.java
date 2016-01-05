package com.moma.trip.service;

import java.util.List;

import com.moma.trip.po.MarketActivity;
import com.moma.trip.po.PresentAnalye;

public interface MarketActivityService {

	public void save(MarketActivity activity);

	public List<MarketActivity> getActivityPageList();

	public List<PresentAnalye> analyzeByActivityId(String activityId);

}
