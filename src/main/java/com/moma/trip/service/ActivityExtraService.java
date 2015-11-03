package com.moma.trip.service;

import java.util.List;

import com.moma.trip.po.ActivityExtra;

public interface ActivityExtraService {

	void save(ActivityExtra extra);

	void deleteExtraById(String id);
	
	List<ActivityExtra> getActivityExtraByActivityId(String activityPlanId);

}
