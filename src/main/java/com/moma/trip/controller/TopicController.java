package com.moma.trip.controller;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moma.framework.web.WebResult;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.Topic;
import com.moma.trip.service.TopicService;

@Scope(value="prototype")
@Controller
@RequestMapping("/topic")
public class TopicController extends RestfulController {

	@Resource
	private TopicService topicService;
	
	@RequestMapping(method=RequestMethod.POST)
	@ResponseBody
	public WebResult save(@RequestBody Topic topic){

		System.out.println(topic);
		
		topicService.saveTopic(topic);
		
		return this.success(null);
	}
	
}
