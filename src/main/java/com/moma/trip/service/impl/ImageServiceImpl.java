package com.moma.trip.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.mapper.AdvImageMapper;
import com.moma.trip.mapper.ImageMapper;
import com.moma.trip.po.AdvImage;
import com.moma.trip.po.Image;
import com.moma.trip.service.DiscoveryService;
import com.moma.trip.service.ImageService;

@Service
public class ImageServiceImpl implements ImageService{

	@Resource
	private DiscoveryService discoveryService;
	
	@Resource
	private ImageMapper imageMapper;
	
	@Resource
	private AdvImageMapper advImageMapper;

	@Transactional(propagation=Propagation.REQUIRED)
	@Override
	public void saveImage(Image image) {
		
		imageMapper.saveImage(image);
		
		if("M-DISCOVERY-SWIP".equalsIgnoreCase(image.getType())){
			AdvImage advImage = new AdvImage();
			advImage.setAdvImageId(UUIDUtils.getUUID());
			advImage.setEnable("yes");
			advImage.setImageURL(image.getPath().substring(1));
			advImage.setUrl(image.getLinkURL());
			advImage.setImageId(image.getImageId());
			
			advImageMapper.saveAdvImage(advImage);
		}
		
		if("DISCOVERY".equals(image.getType())){
			discoveryService.updateDiscoveryImageURL(image.getOwnerId(),image.getPath());
		}
		
	}

	@Override
	public void deleteImageById(String id) {
		Image img = imageMapper.getImageById(id);
		
		if(img != null && "M-DISCOVERY-SWIP".equals(img.getType())){
			advImageMapper.deleteAdvImgByImageId(id);
		}
		
		imageMapper.deleteImageById(id);
	}

	@Override
	public List<Image> getImageByOwner(String ownerId) {
		
		return imageMapper.getImageByOwnerId(ownerId);
	}
	
}
