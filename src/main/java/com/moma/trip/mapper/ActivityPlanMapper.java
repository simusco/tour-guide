package com.moma.trip.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.ActivityPlan;
import com.moma.trip.po.Tags;

@Repository
public interface ActivityPlanMapper {

	Long getPaginationTotal(Map<String, Object> params);

	List<ActivityPlan> getPaginationList(Map<String, Object> params);
	
	List<Tags> getActivityPlanTags(String activityPlanId);

	ActivityPlan getActivityPlanById(String activityPlanId);

}
