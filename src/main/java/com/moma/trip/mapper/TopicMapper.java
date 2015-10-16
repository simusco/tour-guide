package com.moma.trip.mapper;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.Topic;

@Repository
public interface TopicMapper {

	void saveTopic(Topic topic);

}
