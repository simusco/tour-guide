package com.moma.trip.service;

import com.moma.framework.pagination.Pagination;
import com.moma.trip.po.ActivityPlan;

public interface ActivityPlanService {

	public Pagination getActivityPlanPageList(Pagination pagination);

	public ActivityPlan getActivityPlanById(String activityPlanId);

	public void saveBaseInfo(ActivityPlan activityPlan);

	public void updateBaseInfo(ActivityPlan activityPlan);

}
