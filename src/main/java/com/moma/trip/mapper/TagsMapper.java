package com.moma.trip.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.Tags;

@Repository
public interface TagsMapper {

	List<Tags> getAllTags();

	Tags getTagByName(String tag, String type);

	List<Tags> getChildren(String tag, String type);

}
