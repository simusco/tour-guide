package com.moma.trip.activity.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.moma.framework.pagination.Pagination;
import com.moma.framework.web.BaseSupportAction;
import com.moma.trip.activity.po.ActivityPlan;
import com.moma.trip.activity.po.Tags;
import com.moma.trip.activity.service.ActivityPlanService;
import com.moma.trip.activity.service.TagsService;

public class ActivityPlanAction extends BaseSupportAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1803507408872865535L;

	private ActivityPlanService activityPlanService;
	private TagsService tagsService;

	private List<Tags> tags = null;
	private Pagination activityPlanList = null;
	private int currPage;
	private String activityPlanId;
	private ActivityPlan activityPlan;

	public String toQuery() {
		
		Map<Tags, List<Tags>> tags = tagsService.getAllTags();
		this.success(tags);
		
		return SUCCESS;
	}
	
	public String query() {
		Pagination pagination = new Pagination();
		
		//������ʱ��Ҫ��ѯ�ı�ǩ
		List<String> tagNames = new ArrayList<String>();
		if(tags != null){
			for(int i=0;i<tags.size();i++){
				Tags tag = tags.get(i);
				
				if("QUERY".equals(tag.getValue())){
					tagNames.add(tag.getTag());
				}
			}
		}
		
		//���tags Ϊ mybatis == null 
		if(tagNames == null || tagNames.size() == 0)
			tagNames = null;
		
		pagination.put("tags", tagNames);
		pagination.put("paramCount", tagNames == null ? 0 : tagNames.size());
		pagination.setCurrPage(currPage);
		
		activityPlanList = activityPlanService.getActivityPlanPageList(pagination);
		return SUCCESS;
	}
	
	public String index(){
		
		return SUCCESS;
	}
	
	public String detail(){
		if(activityPlanId == null){
			return "index";
		}
		
		activityPlan = activityPlanService.getActivityPlanById(activityPlanId);
		if(activityPlan == null){
			return "index";
		}
		
		return SUCCESS;
	}

	public ActivityPlanService getActivityPlanService() {
		return activityPlanService;
	}

	public void setActivityPlanService(ActivityPlanService activityPlanService) {
		this.activityPlanService = activityPlanService;
	}

	public List<Tags> getTags() {
		return tags;
	}

	public void setTags(List<Tags> tags) {
		this.tags = tags;
	}

	public Pagination getActivityPlanList() {
		return activityPlanList;
	}

	public void setActivityPlanList(Pagination activityPlanList) {
		this.activityPlanList = activityPlanList;
	}

	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public TagsService getTagsService() {
		return tagsService;
	}

	public void setTagsService(TagsService tagsService) {
		this.tagsService = tagsService;
	}

	public String getActivityPlanId() {
		return activityPlanId;
	}

	public void setActivityPlanId(String activityPlanId) {
		this.activityPlanId = activityPlanId;
	}

	public ActivityPlan getActivityPlan() {
		return activityPlan;
	}

	public void setActivityPlan(ActivityPlan activityPlan) {
		this.activityPlan = activityPlan;
	}

}
