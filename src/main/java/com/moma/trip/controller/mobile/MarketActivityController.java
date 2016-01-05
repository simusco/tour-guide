package com.moma.trip.controller.mobile;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.MarketActivity;
import com.moma.trip.po.PresentAnalye;
import com.moma.trip.service.MarketActivityService;


@Scope(value="prototype")
@Controller
@RequestMapping("/m")
public class MarketActivityController extends RestfulController {

	@Resource
	private MarketActivityService marketActivityService;
	
	@RequestMapping(value="/maintain/marketActivity.html",method=RequestMethod.GET)
	@ResponseBody
	public byte[] activity(){
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<MarketActivity> list = marketActivityService.getActivityPageList();
		map.put("marketActivityList", list);
		
		return this.success(map).toJSONBytes();
	}
	
	@RequestMapping(value="/maintain/marketActivity.html",method=RequestMethod.POST)
	@ResponseBody
	public byte[] save(@RequestBody MarketActivity activity){
		Map<String, Object> map = new HashMap<String, Object>();
		try{
			marketActivityService.save(activity);
			
			map.put("flag", true);
		}catch(Exception e){
			e.printStackTrace();
			//生成订单失败
			map.put("flag", false);
			map.put("msg", e.getMessage());
		}
		return toJSONBytes(map);
	}
	
	@RequestMapping(value="/maintain/marketActivity/analyze.html",method=RequestMethod.GET)
	@ResponseBody
	public byte[] analyze(String activityId){
		List<PresentAnalye> list = marketActivityService.analyzeByActivityId(activityId);
		return this.success(list).toJSONBytes();
	}
}
