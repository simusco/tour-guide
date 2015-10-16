package com.moma.trip.service;

import java.util.List;
import java.util.Map;

import com.moma.trip.po.Tags;

public interface TagsService {

	public Map<Tags, List<Tags>> getAllTags();

	public Map<Tags, List<Tags>> getChildren(String tag, String type);
	
}
