package com.moma.trip.controller.admin;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moma.framework.web.WebResult;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.ActivityPlan;
import com.moma.trip.service.ActivityPlanService;

@Scope(value="prototype")
@Controller
@RequestMapping("/activity/plan")
public class ActivityPlanController extends RestfulController{
	
	@Resource
	private ActivityPlanService activityPlanService;

	@RequestMapping(value="/{id}",method=RequestMethod.DELETE)
	@ResponseBody
	public WebResult delete(@PathVariable String id){
		
		return null;
	}
	
	@ResponseBody
	@RequestMapping(method=RequestMethod.POST)
	public WebResult save(@RequestBody ActivityPlan activityPlan){
		
		System.out.println(activityPlan);
		
		activityPlanService.saveBaseInfo(activityPlan);
		
		return this.success(null);
	}
	
	@ResponseBody
	@RequestMapping(method=RequestMethod.PUT)
	public WebResult update(@RequestBody ActivityPlan activityPlan){
		
		activityPlanService.updateBaseInfo(activityPlan);
		
		return this.success(null);
	}
	
	@ResponseBody
	@RequestMapping(value="/{id}",method=RequestMethod.GET)
	public WebResult get(@PathVariable String id){
		System.out.println(id);
		
		ActivityPlan activityPlan = null;
		if(id != null){
			activityPlan = activityPlanService.getActivityPlanById(id);
		}
		
		return success(activityPlan);
	}
	
}
