package com.moma.trip.controller;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.moma.framework.utils.UUIDUtils;
import com.moma.framework.web.WebResult;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.Image;

@Scope(value="prototype")
@Controller
@RequestMapping("/image")
public class ImageController extends RestfulController {

	private String rootPath = "d:/tour-guide/upload";
	
	@RequestMapping(value="/upload/{activityId}/{type}",method=RequestMethod.POST)
	@ResponseBody
	public WebResult upload(@RequestParam("file") CommonsMultipartFile[] files, @PathVariable String activityId, @PathVariable String type){
		
		System.out.println(activityId);
		System.out.println(type);
		System.out.println(files);
		
		String path = rootPath + "/" + activityId;
		if(!new File(path).exists()){
			new File(path).mkdirs();
		}
		
		String uuid = UUIDUtils.getUUID();
		String f = path + "/" + uuid;
		
		try {
			if(files != null){
				for(int i=0;i<files.length;i++){
					CommonsMultipartFile cf = files[i];
					
					Image image = new Image();
					image.setImageId(uuid);
					image.setImageName(cf.getOriginalFilename());
					image.setOwnerId(activityId);
					image.setPath("/"+activityId+"/"+uuid);
					image.setType(type);
					image.setImagesType(cf.getContentType());
					image.setFileSize(cf.getSize());
					
					FileUtils.copyInputStreamToFile(cf.getInputStream(), new File(f));
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
}
