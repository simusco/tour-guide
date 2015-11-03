package com.moma.trip.service;

import java.util.List;

import com.moma.framework.pagination.Pagination;
import com.moma.trip.po.ActivityPlan;

public interface ActivityPlanService {

	public Pagination getActivityPlanPageList(Pagination pagination);

	public ActivityPlan getActivityPlanById(String activityPlanId);

	public void saveBaseInfo(ActivityPlan activityPlan);

	public void updateBaseInfo(ActivityPlan activityPlan);

	/**
	 * 
	 * @param type HOT, SPOT, TOPIC
	 * @param tags 标签
	 * @param count 显示条数 , max-count:50
	 * @param page 页
	 * @param order REC,SALE,PRICE
	 * @param orderType -1 desc, 1:asc
	 * @return 
	 */
	public List<ActivityPlan> searchActivity(
			String type, 
			String[] tags, 
			Integer count,
			Integer page,
			String order,
			String orderType
	);

	public Long getSearchActivityTotalRow(String type, String[] tags);

	public List<ActivityPlan> getActivityPlanByTopicId(String topicId);

}
