package com.moma.trip.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.moma.trip.mapper.ActivityExtraMapper;
import com.moma.trip.mapper.ActivityPlanMapper;
import com.moma.trip.mapper.ImageMapper;
import com.moma.trip.po.ActivityExtra;
import com.moma.trip.po.ActivityPlan;
import com.moma.trip.po.Goodness;
import com.moma.trip.po.Image;
import com.moma.trip.service.GoodnessService;
import com.moma.trip.service.SearchService;

@Service
public class SearchServiceImpl implements SearchService {

	@Resource
	private ActivityPlanMapper activityPlanMapper;
	
	@Resource
	private ImageMapper imageMapper;
	
	@Resource
	private GoodnessService goodnessService;
	
	@Resource
	private ActivityExtraMapper activityExtraMapper;
	
	@Override
	public List<Object> search(String keyword) {
		
		List<Object> list = activityPlanMapper.getActivityPlanByKeyword(keyword);
		
		if(list != null){
			for(int i=0;i<list.size();i++){
				ActivityPlan ap = (ActivityPlan) list.get(i);
				
				List<Image> imageList = imageMapper.getImageByOwnerId(ap.getActivityPlanId());
				ap.setImageList(imageList);
				
				List<Goodness> goodnessList = goodnessService.getGoodnessByActivityId(ap.getActivityPlanId());
				ap.setGoodnessList(goodnessList);
				
				List<ActivityExtra> extraList = activityExtraMapper.getActivityExtraByActivityId(ap.getActivityPlanId());
				ap.setExtraList(extraList);
				
			}
		}
		
		return list;
	}

}
