package com.moma.trip.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.moma.trip.mapper.ImageMapper;
import com.moma.trip.po.Image;
import com.moma.trip.service.ImageService;

@Service
public class ImageServiceImpl implements ImageService{

	@Resource
	private ImageMapper imageMapper;

	@Override
	public void saveImage(Image image) {
		
		imageMapper.saveImage(image);
		
	}
	
	
	
}
