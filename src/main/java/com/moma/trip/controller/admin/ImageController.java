package com.moma.trip.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Random;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.moma.framework.web.WebResult;
import com.moma.framework.web.springmvc.RestfulController;
import com.moma.trip.po.Image;
import com.moma.trip.service.ImageService;

@Scope(value="prototype")
@Controller
@RequestMapping("/image")
public class ImageController extends RestfulController {

	@Resource
	private ImageService imageService;
	//E:\apache\tour-guide\static\images
	private String rootPath = "/home/dftrip/images";
	
	@RequestMapping(value="/upload/{activityId}/{type}",method=RequestMethod.POST)
	@ResponseBody
	public WebResult upload(@RequestParam("file") CommonsMultipartFile[] files, @PathVariable String activityId, @PathVariable String type){
		
		try {
			if(files != null){
				for(int i=0;i<files.length;i++){
					CommonsMultipartFile cf = files[i];
					
					//原始文件名称
					String cfname = cf.getOriginalFilename();
					//获取后缀
					String suffix = cfname.substring(cfname.lastIndexOf("."));
					
					String path = "/"+activityId+"/" + type;
					if(!new File(rootPath + path).exists()){
						new File(rootPath + path).mkdirs();
					}
					
					//随机文件名
					String uuid = new Date().getTime() + new Random().nextInt(10000) + "";
					String filePath = path + "/" + uuid +suffix;
					
					FileUtils.copyInputStreamToFile(cf.getInputStream(), new File(rootPath + filePath));
					
					Image image = new Image();
					image.setImageId(uuid);
					image.setImageName(cf.getOriginalFilename());
					image.setOwnerId(activityId);
					image.setPath(filePath);
					image.setType(type);
					image.setImagesType(cf.getContentType());
					image.setFileSize(cf.getSize());
					
					imageService.saveImage(image);
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return this.success(null);
	}
	
	@RequestMapping(value="/{id}",method=RequestMethod.DELETE)
	@ResponseBody
	public WebResult delete(@PathVariable String id){

		imageService.deleteImageById(id);
		
		return this.success(null);
	}
	

	public static void main(String[] args) {
		
		/*for (int i = 0;i<100;i++){
			String uuid = new Date().getTime() + new Random().nextInt(10000) + "";
			System.out.println(uuid);
		}*/
		
		/*String cfname = "text.aa.jpeg";
		String suffix = cfname.substring(cfname.lastIndexOf("."));
		System.out.println(suffix);*/
	}
	
}
