package com.moma.trip.controller.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.moma.trip.po.ActivitySearch;
import com.moma.trip.po.Tags;
import com.moma.trip.service.ActivityPlanService;
import com.moma.trip.service.TagsService;
import com.moma.trip.service.TopicService;

@Scope(value="prototype")
@Controller
@RequestMapping("/web/v1/activity")
public class ActivityController extends MultiActionController {
	
	@Resource
	private ActivityPlanService activityPlanService;
	
	@Resource
	private TopicService topicService;
	
	@Resource
	private TagsService tagsService;

	//type:HOT, SPOT, TOPIC
	//tags[]:标签
	//count:显示条数 , max-count:50
	//page:页
	//order:REC,SALE,PRICE
	//order-type:-1 desc, 1:asc
	
	@RequestMapping(value="/index.html",method=RequestMethod.GET)
	public ModelAndView index(){
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("hotlist", activityPlanService.searchActivity("HOT", null, 4, 1, "REC", "-1"));
		map.put("spotlist", activityPlanService.searchActivity("SPOT", null, 4, 1, "REC", "-1"));
		map.put("topiclist", topicService.searchTopic(4, 1));
		
		return new ModelAndView("index", map);
	}
	
	@RequestMapping(value="/query.html",method=RequestMethod.GET)
	public ModelAndView query(){
		List<Tags> tagTypeList = new ArrayList<Tags>();
		List<Tags> tagList = tagsService.getTagList();
		
		if(tagList != null){
			for(Iterator<Tags> it = tagList.iterator();it.hasNext();){
				Tags tag = it.next();
				if("-1".equals(tag.getParentId())){
					tagTypeList.add(tag);
				}
			}
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tagTypeList", tagTypeList);
		map.put("tagList", tagList);
		
		return new ModelAndView("query", map);
	}
	
	@RequestMapping(value="/query/route.html",method=RequestMethod.GET)
	public ModelAndView queryRoute(ActivitySearch search){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", activityPlanService.searchActivity(
				search.getType(), 
				search.getTags(), 
				search.getCount(), 
				search.getPage(), 
				search.getOrder(), 
				search.getOrderType()));
		
		Long totalRow = activityPlanService.getSearchActivityTotalRow(
				search.getType(),
				search.getTags());
		search.setTotalRow(totalRow);
		
		if(search.getCount() == null || search.getCount() <=0 || search.getCount() > 50)
			search.setCount(15);
		
		if(totalRow > 0){
			long x = search.getTotalRow() / search.getCount();
			long y = (search.getTotalRow() % search.getCount()) != 0 ? 1l : 0l;
			
			long totalPage = x+y;
			
			search.setTotalPage(totalPage);
		}
		map.put("search", search);
		
		return new ModelAndView("query-route", map);
	}
	
}
