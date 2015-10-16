package com.moma.trip.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.moma.framework.pagination.Pagination;
import com.moma.trip.mapper.ActivityPlanMapper;
import com.moma.trip.mapper.ImageMapper;
import com.moma.trip.po.ActivityPlan;
import com.moma.trip.po.Image;
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
		/*if (ap != null) {
			List<Tags> tags = activityPlanMapper.getActivityPlanTags(ap.getActivityPlanId());
			ap.setTags(getActivityTags(tags));

			List<Image> imageList = imageMapper.getImageByOwnerId(ap.getActivityPlanId());
			ap.setImageList(imageList);
		}*/

		return ap;

	}

}
