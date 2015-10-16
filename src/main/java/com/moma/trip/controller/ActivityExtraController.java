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
import com.moma.trip.po.ActivityExtra;
import com.moma.trip.service.ActivityExtraService;

@Scope(value="prototype")
@Controller
@RequestMapping("/activity/extra")
public class ActivityExtraController extends RestfulController {

	@Resource
	private ActivityExtraService activityExtraService;
	
	@RequestMapping(method=RequestMethod.POST)
	@ResponseBody
	public WebResult save(@RequestBody ActivityExtra extra){

		System.out.println(extra);
		
		activityExtraService.save(extra);
		
		return this.success(null);
	}
}
