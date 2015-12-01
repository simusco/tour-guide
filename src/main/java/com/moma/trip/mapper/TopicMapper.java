package com.moma.trip.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.Topic;

@Repository
public interface TopicMapper {

	void saveTopic(Topic topic);

	void deleteTopicById(String id);

	List<Topic> searchTopic(Integer from, Integer count);

	Topic getTopicById(String topicId);

	void incrementReadcount(String topicId , int i);
	
}
