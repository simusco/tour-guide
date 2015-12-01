package com.moma.trip.controller.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.moma.trip.po.ActivityPlan;
import com.moma.trip.po.Topic;
import com.moma.trip.service.ActivityPlanService;
import com.moma.trip.service.TopicService;

@Scope(value="prototype")
@RequestMapping("/web/v1/topic")
@Controller("WebTopicController")
public class TopicController extends MultiActionController {

	@Resource
	private TopicService topicService;
	
	@Resource
	private ActivityPlanService activityPlanService;
	
	@RequestMapping(value="/index.html", method=RequestMethod.GET)
	public ModelAndView index(Integer count, Integer page){
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<Topic> topicList = topicService.searchTopic(count, page);
		map.put("topicList", topicList);
		
		return new ModelAndView("topic", map);
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public ModelAndView get(){
		Map<String, Object> map = new HashMap<String, Object>();
		return new ModelAndView("topic-detail", map);
	}
	
	@RequestMapping(value="/detail.html", method=RequestMethod.GET)
	public ModelAndView detail(String topicId){
		Map<String, Object> map = new HashMap<String, Object>();
		
		Topic topic = topicService.getTopicById(topicId);
		
		if(topic == null)
			return new ModelAndView("error", map);
		
		topicService.incrementReadcount(topicId, 1);
		
		List<ActivityPlan> activityList = activityPlanService.getActivityPlanByTopicId(topicId);
		
		map.put("topic", topic);
		map.put("activityList", activityList);
		
		return new ModelAndView("topic-detail", map);
	}
	
}
