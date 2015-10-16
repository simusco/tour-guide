package com.moma.trip.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.ActivityExtra;

@Repository
public interface ActivityExtraMapper {

	void saveActivityExtra(ActivityExtra extra);

	List<ActivityExtra> getActivityExtraByActivityId(String activityPlanId);

}
