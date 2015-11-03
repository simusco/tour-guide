package com.moma.trip.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.ActivityPlan;
import com.moma.trip.po.ActivitySearch;

@Repository
public interface ActivityMapper {

	List<ActivityPlan> searchActivity(ActivitySearch activitySearch);

	Long getSearchActivityTotalRow(ActivitySearch activitySearch);

	List<ActivityPlan> getActivityPlanByTopicId(String topicId);
	
}
