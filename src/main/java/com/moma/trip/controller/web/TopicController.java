package com.moma.trip.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moma.framework.web.WebResult;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.service.TopicService;

@Scope(value="prototype")
@RequestMapping("/web/v1/topic")
@Controller("webTopicController")
public class TopicController extends RestfulController {

	//order-type:-1 desc, 1:asc
	//count:显示条数 , max-count:50
	//page:页
	
	@Autowired
	private TopicService topicService;
	
	@RequestMapping(method=RequestMethod.GET)
	@ResponseBody
	public WebResult list(Integer count, Integer page, String orderType){
		
		return this.success(null);
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	@ResponseBody
	public WebResult get(){
		return this.success(null);
	}
	
}
