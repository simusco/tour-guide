package com.moma.trip.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.mapper.ActivityPlanMapper;
import com.moma.trip.mapper.TopicMapper;
import com.moma.trip.po.Topic;
import com.moma.trip.service.TopicService;

@Service
public class TopicServiceImpl implements TopicService {

	@Resource
	private TopicMapper topicMapper;
	
	@Resource
	private ActivityPlanMapper activityPlanMapper;
	
	@Transactional(propagation=Propagation.REQUIRED)
	@Override
	public void saveTopic(Topic topic) {
		
		if(topic == null)
			return;
		
		topic.setTopicId(UUIDUtils.getUUID());
		topic.setCreateTime(new Date());
		
		topicMapper.saveTopic(topic);
		
		String[] activityIds = topic.getActivityIds();
		
		if(activityIds != null){
			for(int i=0;i<activityIds.length;i++){
				activityPlanMapper.updateTopicId(activityIds[i], topic.getTopicId());
			}
		}
		
	}

}
