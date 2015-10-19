package com.moma.trip.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.Image;

@Repository
public interface ImageMapper {

	public List<Image> getImageByOwnerId(String ownerId);
	
	public List<Image> getImageByOwnerIdAndImgType(String ownerId, String imageType);
	
	public Image getImageById(String imageId);

	public void saveImage(Image image);
	
	void deleteImageById(String id);
	
}
