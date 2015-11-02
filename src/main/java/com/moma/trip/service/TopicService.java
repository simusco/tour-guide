package com.moma.trip.service;

import java.util.List;

import com.moma.trip.po.Topic;

public interface TopicService {

	void saveTopic(Topic topic);

	void deleteTopicById(String id);

	void getTopicPageList(Integer count, Integer page, String orderType);

	List<Topic> searchTopic(Integer count, Integer page);

}
