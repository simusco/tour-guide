package com.moma.trip.controller.web;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.moma.trip.service.ActivityPlanService;
import com.moma.trip.service.TopicService;

@Scope(value="prototype")
@Controller
@RequestMapping("/web/v1/activity")
public class ActivityController extends MultiActionController {
	
	@Resource
	private ActivityPlanService activityPlanService;
	
	@Resource
	private TopicService topicService;

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
	
}
