package com.moma.trip.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.AdvImage;

@Repository
public interface AdvImageMapper {

	void saveAdvImage(AdvImage advImage);

	void deleteAdvImgByImageId(String imageId);
	
	List<AdvImage> getAdvImageList();

	void updateAdvImage(AdvImage advImage);

}
