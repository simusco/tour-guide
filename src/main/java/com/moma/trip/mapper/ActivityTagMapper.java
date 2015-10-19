package com.moma.trip.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.ActivityTag;

@Repository
public interface ActivityTagMapper {

	void deleteActivityTagByActivityId(String activityId);

	List<ActivityTag> getActivityTagsByActivityId(String activityId);
	
	void saveActivityTag(ActivityTag tag);

}
