package com.moma.trip.service.impl;

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

}
