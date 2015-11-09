package com.moma.trip.controller.admin;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moma.framework.web.WebResult;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.Tags;
import com.moma.trip.service.TagsService;

@Scope(value="prototype")
@Controller
@RequestMapping("/tags")
public class FetchTagsController  extends RestfulController {

	@Resource 
	private TagsService tagsService;
	
	@ResponseBody
	@RequestMapping(value="/{type}/all",method=RequestMethod.GET)
	public WebResult query(@PathVariable("type") String type){
		
		List<Tags> tags = tagsService.getTagList();
		
		return success(tags);
	}
	
}
