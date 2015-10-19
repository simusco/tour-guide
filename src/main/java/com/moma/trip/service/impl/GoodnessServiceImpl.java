package com.moma.trip.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.mapper.GoodnessMapper;
import com.moma.trip.po.Goodness;
import com.moma.trip.service.GoodnessService;

@Service
public class GoodnessServiceImpl implements GoodnessService {

	@Resource
	private GoodnessMapper goodnessMapper;
	
	@Override
	public void saveGoodness(Goodness goodness) {

		if(goodness == null)//正常应该Throw 业务异常
			return;
		goodness.setGoodnessId(UUIDUtils.getUUID());
		
		
		goodnessMapper.saveGoodness(goodness);
		
	}

	@Override
	public List<Goodness> getGoodnessByActivityId(String activityPlanId) {
		// TODO Auto-generated method stub
		return goodnessMapper.getGoodnessByActivityId(activityPlanId);
	}

	@Override
	public void deleteGoodnessById(String id) {
		// TODO Auto-generated method stub
		goodnessMapper.deleteGoodnessById(id);
	}

}
