package com.moma.trip.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.mapper.ActivityExtraMapper;
import com.moma.trip.po.ActivityExtra;
import com.moma.trip.service.ActivityExtraService;

@Service
public class ActivityExtraServiceImpl implements ActivityExtraService {

	@Resource
	private ActivityExtraMapper activityExtraMapper;

	@Override
	public void save(ActivityExtra extra) {

		if(extra == null)
			return;
		
		extra.setActivityExtraId(UUIDUtils.getUUID());
		
		activityExtraMapper.saveActivityExtra(extra);
	}

	@Override
	public void deleteExtraById(String id) {
		// TODO Auto-generated method stub
		activityExtraMapper.deleteExtraById(id);
	}

	@Override
	public List<ActivityExtra> getActivityExtraByActivityId(String activityPlanId) {
		return activityExtraMapper.getActivityExtraByActivityId(activityPlanId);
	}

}
