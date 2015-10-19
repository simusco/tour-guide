package com.moma.trip.controller;

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
import com.moma.trip.po.Goodness;
import com.moma.trip.service.GoodnessService;

@Scope(value="prototype")
@Controller
@RequestMapping("/activity/goodness")
public class GoodnessController extends RestfulController {

	@Resource
	private GoodnessService goodnessService;
	
	@RequestMapping(method=RequestMethod.POST)
	@ResponseBody
	public WebResult save(@RequestBody Goodness goodness){

		System.out.println(goodness);
		
		goodnessService.saveGoodness(goodness);
		
		return this.success(null);
	}
	
	@RequestMapping(value="/{id}",method=RequestMethod.DELETE)
	@ResponseBody
	public WebResult delete(@PathVariable String id){

		goodnessService.deleteGoodnessById(id);
		
		return this.success(null);
	}
}
