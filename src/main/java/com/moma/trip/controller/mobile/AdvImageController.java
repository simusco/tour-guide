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
import com.moma.trip.po.AdvImage;
import com.moma.trip.service.AdvImageService;

@Scope(value="prototype")
@Controller
@RequestMapping("/m")
public class AdvImageController  extends RestfulController {

	@Resource
	private AdvImageService advImageService;
	
	@RequestMapping(value="/maintain/advImage.html",method=RequestMethod.GET)
	@ResponseBody
	public byte[] advImage(){
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<AdvImage> advImageList = advImageService.getAdvImageList();
		map.put("advImageList", advImageList);

		return this.toJSONBytes(map);
	}
	
	@RequestMapping(value="/maintain/advImage.html",method=RequestMethod.POST)
	@ResponseBody
	public byte[] advImage(@RequestBody AdvImage advImage){
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			advImageService.updateAdvImage(advImage);

			map.put("flag", true);
			map.put("message", "更新成功!");
		} catch (Exception e) {
			e.printStackTrace();
			map.put("flag", false);
			map.put("message", e.getMessage());
		}

		return this.toJSONBytes(map);
	}
	
}
