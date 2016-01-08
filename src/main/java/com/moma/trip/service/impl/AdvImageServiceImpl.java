package com.moma.trip.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.moma.trip.mapper.AdvImageMapper;
import com.moma.trip.po.AdvImage;
import com.moma.trip.service.AdvImageService;

@Service
public class AdvImageServiceImpl implements AdvImageService {

	@Resource
	private AdvImageMapper advImageMapper;
	
	@Override
	public List<AdvImage> getAdvImageList() {
		return advImageMapper.getAdvImageList();
	}
	
	@Override
	public void updateAdvImage(AdvImage advImage) {

		advImageMapper.updateAdvImage(advImage);
	}

}
