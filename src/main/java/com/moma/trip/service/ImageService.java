package com.moma.trip.service;

import java.util.List;

import com.moma.trip.po.Image;

public interface ImageService {

	void saveImage(Image image);

	void deleteImageById(String id);
	
	List<Image> getImageByOwner(String ownerId);

}
