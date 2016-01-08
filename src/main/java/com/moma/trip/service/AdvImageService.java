package com.moma.trip.service;

import java.util.List;

import com.moma.trip.po.AdvImage;

public interface AdvImageService {

	public void updateAdvImage(AdvImage advImage);
	
	public List<AdvImage> getAdvImageList();
	
}
