package com.moma.trip.controller.web;

import java.util.ArrayList;
import java.util.Calendar;
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

import com.moma.trip.po.ActivityExtra;
import com.moma.trip.po.ActivityPlan;
import com.moma.trip.po.ActivitySearch;
import com.moma.trip.po.Goodness;
import com.moma.trip.po.Image;
import com.moma.trip.po.Tags;
import com.moma.trip.po.Ticket;
import com.moma.trip.service.ActivityExtraService;
import com.moma.trip.service.ActivityPlanService;
import com.moma.trip.service.GoodnessService;
import com.moma.trip.service.ImageService;
import com.moma.trip.service.TagsService;
import com.moma.trip.service.TicketService;
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
	
	@Resource
	private ImageService imageService;
	
	@Resource
	private GoodnessService goodnessService;
	
	@Resource
	private TicketService ticketService;
	
	@Resource
	private ActivityExtraService activityExtraService;

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
	public ModelAndView query(String type){
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
		map.put("type", type);
		
		return new ModelAndView("query", map);
	}
	
	@RequestMapping(value="/query/route.html",method=RequestMethod.GET)
	public ModelAndView queryRoute(ActivitySearch search, String type){
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
		map.put("type", type);
		
		return new ModelAndView("query-route", map);
	}
	
	@RequestMapping(value="/detail.html",method=RequestMethod.GET)
	public ModelAndView detail(String routeId, String type){

		Map<String, Object> map = new HashMap<String, Object>();
		
		ActivityPlan route = activityPlanService.getActivityPlanById(routeId);
		
		if(route == null){
			return new ModelAndView("error", map);
		}
		
		List<Image> imageList = imageService.getImageByOwner(routeId);
		route.setImageList(imageList);
		map.put("route", route);
		
		//获取亮点
		List<Goodness> goodnessList = goodnessService.getGoodnessByActivityId(routeId);
		map.put("goodnessList", goodnessList);
		
		//获取门票信息
		Integer year = Calendar.getInstance().get(Calendar.YEAR);
		Integer month = Calendar.getInstance().get(Calendar.MONTH);
		Integer day = Calendar.getInstance().get(Calendar.DATE);
		
		List<Ticket> ticketList = ticketService.getTicketList(routeId, year, month+1, day);
		map.put("ticketList", ticketList);
		
		//推荐玩法与购买须知
		List<ActivityExtra> activityExtraList = activityExtraService.getActivityExtraByActivityId(routeId);
		map.put("activityExtraList", activityExtraList);
		
		map.put("type", type);//已经超出想象，要死的节奏
		
		return new ModelAndView("detail", map);
	}
	
	
	@RequestMapping(value="/goodness.html",method=RequestMethod.GET)
	public ModelAndView goodness(String routeId, String type){
		Map<String, Object> map = new HashMap<String, Object>();
		
		ActivityPlan route = activityPlanService.getActivityPlanById(routeId);
		if(route == null){
			return new ModelAndView("error", map);
		}
		map.put("route", route);
		
		//获取亮点
		List<Goodness> goodnessList = goodnessService.getGoodnessByActivityId(routeId);
		map.put("goodnessList", goodnessList);
		map.put("type", type);//已经超出想象，要死的节奏
		
		return new ModelAndView("goodness", map);
	}
}
