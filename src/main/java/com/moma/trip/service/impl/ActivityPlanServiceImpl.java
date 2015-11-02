package com.moma.trip.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.moma.framework.pagination.Pagination;
import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.mapper.ActivityMapper;
import com.moma.trip.mapper.ActivityPlanMapper;
import com.moma.trip.mapper.ActivityTagMapper;
import com.moma.trip.mapper.ImageMapper;
import com.moma.trip.po.ActivityPlan;
import com.moma.trip.po.ActivitySearch;
import com.moma.trip.po.ActivityTag;
import com.moma.trip.po.Tags;
import com.moma.trip.service.ActivityPlanService;
import com.moma.trip.service.TagsService;

@Service
public class ActivityPlanServiceImpl implements ActivityPlanService {

	@Resource
	private ActivityPlanMapper activityPlanMapper;
	@Resource
	private TagsService tagsService;
	@Resource
	private ImageMapper imageMapper;
	@Resource
	private ActivityTagMapper activityTagMapper;
	@Resource
	private ActivityMapper activityMapper;

//	@Transactional(readOnly = true, propagation = Propagation.SUPPORTS)
	public Pagination getActivityPlanPageList(Pagination pagination) {

		Map<String, Object> params = pagination.map();

		Long total = activityPlanMapper.getPaginationTotal(params);
		List<ActivityPlan> list = activityPlanMapper.getPaginationList(params);

		if (list != null) {
			for (int i = 0; i < list.size(); i++) {
				ActivityPlan ap = (ActivityPlan) list.get(i);
				List<Tags> tags = activityPlanMapper.getActivityPlanTags(ap.getActivityPlanId());

				ap.setTags(getActivityTags(tags));
			}
		}

		pagination.setList(list);
		pagination.setTotal(total);

		return pagination;
	}

	public Map<Tags, List<Tags>> getActivityTags(List<Tags> tags) {
		Map<Tags, List<Tags>> maps = new HashMap<Tags, List<Tags>>();
		for (int j = 0; j < tags.size(); j++) {
			Tags tag = tags.get(j);

			Tags p = new Tags();
			p.setTagId(tag.getParentId());
			p.setTag(tag.getpName());

			List<Tags> ll = maps.get(p);
			if (ll == null) {
				ll = new ArrayList<Tags>();
				maps.put(p, ll);
			}

			ll.add(tag);
		}
		return maps;
	}

	public ActivityPlan getActivityPlanById(String activityPlanId) {

		if (activityPlanId == null || "".equals(activityPlanId))
			return null;

		ActivityPlan ap = activityPlanMapper.getActivityPlanById(activityPlanId);
		if(ap != null){
			List<ActivityTag> tags = activityTagMapper.getActivityTagsByActivityId(ap.getActivityPlanId());
			ap.setActivityTagList(tags);
		}
		
		/*if (ap != null) {
			List<Tags> tags = activityPlanMapper.getActivityPlanTags(ap.getActivityPlanId());
			ap.setTags(getActivityTags(tags));

			List<Image> imageList = imageMapper.getImageByOwnerId(ap.getActivityPlanId());
			ap.setImageList(imageList);
		}*/

		return ap;

	}

	@Transactional(propagation=Propagation.REQUIRED)
	@Override
	public void saveBaseInfo(ActivityPlan activityPlan) {
		
		if(activityPlan == null)
			return;
		
		activityPlan.setActivityPlanId(UUIDUtils.getUUID());
		
		List<ActivityTag> activityTagList = activityPlan.getActivityTagList();
		if(activityTagList != null){
			for(int i=0;i<activityTagList.size();i++){
				ActivityTag tag = activityTagList.get(i);
				tag.setActivityPlanId(activityPlan.getActivityPlanId());
				tag.setSort(i);
				tag.setActivityTagsId(UUIDUtils.getUUID());
				activityTagMapper.saveActivityTag(tag);
			}
		}
		
		activityPlanMapper.saveBaseInfo(activityPlan);
	}

	@Transactional(propagation=Propagation.REQUIRED)
	@Override
	public void updateBaseInfo(ActivityPlan activityPlan) {
		
		if(activityPlan == null || StringUtils.isEmpty(activityPlan.getActivityPlanId())){
			System.out.println("参数为空!!!!!!!");
			return;
		}
		
		activityTagMapper.deleteActivityTagByActivityId(activityPlan.getActivityPlanId());
		List<ActivityTag> activityTagList = activityPlan.getActivityTagList();
		if(activityTagList != null){
			for(int i=0;i<activityTagList.size();i++){
				ActivityTag tag = activityTagList.get(i);
				tag.setActivityPlanId(activityPlan.getActivityPlanId());
				tag.setSort(i);
				tag.setActivityTagsId(UUIDUtils.getUUID());
				activityTagMapper.saveActivityTag(tag);
			}
		}
		
		activityPlanMapper.updateBaseInfo(activityPlan);
		
	}

	@Override
	public List<ActivityPlan> searchActivity(String type, String[] tags, Integer count, Integer page, String order,
			String orderType) {
		
		List<String> typelist = Arrays.asList(new String[]{"HOT","SPOT","TOPIC"});
		if(type == null || typelist.indexOf(type.toUpperCase()) == -1){
			orderType = null;
		}

		if(count == null || count <=0 || count > 50)
			count = 15;
		
		if(page == null || page <=0 || page > 100)
			page = 1;
		
		typelist = Arrays.asList(new String[]{"REC","SALE","PRICE"});
		if(orderType == null || typelist.indexOf(orderType.toUpperCase()) == -1){
			orderType = "REC";
		}
		
		if("-1".equals(orderType)){
			orderType = "desc";
		}else if("1".equals(orderType)){
			orderType = "asc";
		}else{
			orderType = "desc";
		}
		
		int from = page > 1 ? count * (page -1) : 0;
		
		List<ActivityPlan> aplist = activityMapper.searchActivity(
				new ActivitySearch(type, tags, from, count, order, orderType));
		
		return aplist;
	}

}
