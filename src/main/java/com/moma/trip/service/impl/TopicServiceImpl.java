package com.moma.trip.service.impl;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

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

	@Override
	public void deleteTopicById(String id) {
		
		topicMapper.deleteTopicById(id);
		
	}

	@Override
	public void getTopicPageList(Integer count, Integer page, String orderType) {
		
	}

	@Override
	public List<Topic> searchTopic(Integer count, Integer page) {

		if(count == null || count <=0 || count > 50)
			count = 15;
		
		if(page == null || page <=0 || page > 100)
			page = 1;
		
		int from = page > 1 ? count * (page -1) : 0;
		
		return topicMapper.searchTopic(from, count);
	}

}
