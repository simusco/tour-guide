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

	private Map<Tags, List<Tags>> tags = null;
	private List<Tags> selectedTags = null;
	private Pagination activityPlanList = null;
	private int currPage;
	private String activityPlanId;
	private ActivityPlan activityPlan;
	private String order;
	
	private void q(){
		Pagination pagination = new Pagination();
		pagination.setPageSize(10);
		
		List<String> selectedTagNames = new ArrayList<String>();
		if(selectedTags != null){
			for(int i=0;i<selectedTags.size();i++){
				Tags tag = selectedTags.get(i);
				System.out.println(tag.getTag()+"-----------------------");
				
				if("QUERY".equals(tag.getType())){
					selectedTagNames.add(tag.getTag());
				}
			}
		}
		
		//mybatis == null 
		if(selectedTagNames == null || selectedTagNames.size() == 0)
			selectedTagNames = null;
		
		pagination.put("tags", selectedTagNames);
		pagination.put("paramCount", selectedTagNames == null ? 0 : selectedTagNames.size());
		pagination.put("order", order);
		pagination.setCurrPage(currPage);
		
		activityPlanList = activityPlanService.getActivityPlanPageList(pagination);
	}
	
	public String query() {
		q();
		tags = tagsService.getAllTags();
		return SUCCESS;
	}
	
	public String list(){
		q();
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

	public Map<Tags, List<Tags>> getTags() {
		return tags;
	}

	public void setTags(Map<Tags, List<Tags>> tags) {
		this.tags = tags;
	}

	public List<Tags> getSelectedTags() {
		return selectedTags;
	}

	public void setSelectedTags(List<Tags> selectedTags) {
		this.selectedTags = selectedTags;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

}
