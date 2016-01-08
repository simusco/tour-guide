package com.moma.trip.controller.mobile;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.moma.framework.pagination.Pagination;
import com.moma.framework.web.WebResult;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.lucene.SearchDiscovery;
import com.moma.trip.po.AdvImage;
import com.moma.trip.po.Discovery;
import com.moma.trip.po.DiscoveryType;
import com.moma.trip.service.AdvImageService;
import com.moma.trip.service.DiscoveryService;

@Scope(value="prototype")
@Controller
@RequestMapping("/m")
public class DiscoveryController extends RestfulController {

	@Resource
	private DiscoveryService discoveryService;
	
	@Resource
	private AdvImageService advImageService;
	
	@RequestMapping(value="/maintain/discovery/type.html",method=RequestMethod.GET)
	@ResponseBody
	public byte[] discoveryType(){
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<DiscoveryType> discoveryTypeList = discoveryService.getDiscoveryTypeList();
		map.put("discoveryTypeList", discoveryTypeList);
		
		return this.toJSONBytes(map);
	}
	
	@RequestMapping(value = "/maintain/discovery.html", method = RequestMethod.POST)
	@ResponseBody
	public byte[] save(@RequestBody Discovery discovery) {

		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(discovery);
		try {
			discoveryService.saveDiscovery(discovery);

			map.put("flag", true);
			map.put("message", "保存成功!");
		} catch (Exception e) {
			e.printStackTrace();
			map.put("flag", false);
			map.put("message", e.getMessage());
		}

		return this.toJSONBytes(map);
	}
	
	@RequestMapping(value = "/maintain/discovery.html", method = RequestMethod.GET)
	@ResponseBody
	public byte[] list(String type, String name, String description) {
		Map<String, Object> map = new HashMap<String, Object>();

		Discovery discovery = new Discovery();
		discovery.setType(type);
		discovery.setName(name);
		discovery.setDescription(description);
		
		List<Discovery> discoveryList = discoveryService.getDiscoveryList(discovery);
		map.put("discoveryList", discoveryList);

		return this.toJSONBytes(map);
	}
	
	@RequestMapping(value="/maintain/discovery/{id}",method=RequestMethod.DELETE)
	@ResponseBody
	public WebResult discovery(@PathVariable String id){
		try {
			discoveryService.deleteDiscoveryById(id);

			return this.success(null);
		} catch (Exception e) {
			e.printStackTrace();
			return this.error(null, e.getMessage());
		}
	}
	
	@RequestMapping(value="/maintain/discovery/{id}",method=RequestMethod.GET)
	@ResponseBody
	public WebResult list(@PathVariable String id){
		
		try {
			Discovery d = discoveryService.getDiscoveryById(id);
			return this.success(d);
		} catch (Exception e) {
			e.printStackTrace();
			return this.error(null, e.getMessage());
		}

	}
	
	@RequestMapping(value="/discovery.html",method=RequestMethod.GET)
	public ModelAndView discovery(){
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<DiscoveryType> discoveryTypeList = discoveryService.getDiscoveryTypeList();
		map.put("discoveryTypeList", discoveryTypeList);
		
		List<AdvImage> advImageList = advImageService.getAdvImageList();
		map.put("advImageList", advImageList);
		
		return new ModelAndView("mtrip.m.discovery", map);
	}
	
	@RequestMapping(value="/discovery/list.html",method=RequestMethod.GET)
	public ModelAndView list(String discoveryType, Integer currPage){
		Map<String, Object> map = new HashMap<String, Object>();
		
		Pagination pagination = new Pagination();
		pagination.setCurrPage(currPage);
		pagination.put("discoveryType", discoveryType);
		
		pagination = discoveryService.getDiscoveryPageList(pagination);
		
		map.put("discoveryList", pagination.getList());
		map.put("discoveryType", discoveryType);
		map.put("pagination", pagination);
		
		
		return new ModelAndView("mtrip.m.discovery.list", map);
	}
	
	@RequestMapping(value="/discovery/tag.html",method=RequestMethod.GET)
	public ModelAndView tag(){
		return new ModelAndView("mtrip.m.tag");
	}
	
	@RequestMapping(value="/discovery/search.html",method=RequestMethod.GET)
	public ModelAndView search(String tag){
		
		Map<String, Object> result = new SearchDiscovery().query(tag, 0 , 6);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("discoveryList", result.get("resultlist"));
		map.put("tag", tag);
		map.put("total", result.get("total"));
		map.put("i", 6);
		
		return new ModelAndView("mtrip.m.search-result", map);
	}
	
	@RequestMapping(value="/discovery/search.ajax",method=RequestMethod.GET)
	public ModelAndView search(String tag, Integer i){
		
		if(i == null || i <0 || i > 200){
			i = 0;
		}
		
		Map<String, Object> result = new SearchDiscovery().query(tag, i , 6);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("discoveryList", result.get("resultlist"));
		map.put("tag", tag);
		map.put("total", result.get("total"));
		map.put("i", i + 6);
		map.put("nomore", result.get("nomore"));
		
		return new ModelAndView("mtrip.m.search-result-ajax", map);
	}
	
}
