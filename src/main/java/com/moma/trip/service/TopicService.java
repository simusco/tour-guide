package com.moma.trip.service;

import com.moma.trip.po.Topic;

public interface TopicService {

	void saveTopic(Topic topic);

	void deleteTopicById(String id);

}
