package com.moma.trip.activity.mapper;

import java.util.List;

import com.moma.trip.activity.po.Tags;

public interface TagsMapper {

	List<Tags> getAllTags();

	Tags getTagByName(String tag, String type);

	List<Tags> getChildren(String tag, String type);

}
