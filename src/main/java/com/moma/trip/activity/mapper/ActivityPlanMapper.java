package com.moma.trip.activity.mapper;

import java.util.List;
import java.util.Map;

import com.moma.trip.activity.po.ActivityPlan;
import com.moma.trip.activity.po.Tags;

public interface ActivityPlanMapper {

	Long getPaginationTotal(Map<String, Object> params);

	List<ActivityPlan> getPaginationList(Map<String, Object> params);
	
	List<Tags> getActivityPlanTags(String activityPlanId);

	ActivityPlan getActivityPlanById(String activityPlanId);

}
