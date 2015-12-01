package com.moma.trip.service;

import java.util.List;

import com.moma.trip.po.Topic;

public interface TopicService {

	void saveTopic(Topic topic);

	void deleteTopicById(String id);

	List<Topic> searchTopic(Integer count, Integer page);

	Topic getTopicById(String topicId);

	void incrementReadcount(String topicId , int i);

}
