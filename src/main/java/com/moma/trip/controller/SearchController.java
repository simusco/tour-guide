package com.moma.trip.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moma.framework.web.WebResult;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.mapper.ImageMapper;
import com.moma.trip.po.ActivityPlan;
import com.moma.trip.po.Image;
import com.moma.trip.service.SearchService;

@Scope(value="prototype")
@Controller
@RequestMapping("/search")
public class SearchController extends RestfulController {
	
	@Resource
	private SearchService searchService;
	
	@RequestMapping(method=RequestMethod.GET)
	@ResponseBody
	public WebResult search(String keyword){

		List<Object> list = searchService.search(keyword);
		
		return this.success(list);
	}
	
}
