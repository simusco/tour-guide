package com.moma.trip.activity.web;

import java.util.List;
import java.util.Map;

import com.moma.framework.web.BaseSupportAction;
import com.moma.trip.activity.po.Tags;
import com.moma.trip.activity.service.TagsService;

public class TagsAction extends BaseSupportAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -873065970274950570L;
	private TagsService tagsService;
	private String tag;
	private Map<Tags, List<Tags>> tags = null;
	
	public String tags() {
		Map<Tags, List<Tags>> tags = tagsService.getAllTags();
		this.success(tags);
		
		return SUCCESS;
	}
	
	public String address() {
		
		if("全部".equals(tag)) tag = "景区";
		tags = tagsService.getChildren(tag, "ADDRESS");
		
		return SUCCESS;
	}
	

	public TagsService getTagsService() {
		return tagsService;
	}

	public void setTagsService(TagsService tagsService) {
		this.tagsService = tagsService;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public Map<Tags, List<Tags>> getTags() {
		return tags;
	}

	public void setTags(Map<Tags, List<Tags>> tags) {
		this.tags = tags;
	}

}
