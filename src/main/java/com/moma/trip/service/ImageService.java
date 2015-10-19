package com.moma.trip.service;

import com.moma.trip.po.Image;

public interface ImageService {

	void saveImage(Image image);

	void deleteImageById(String id);

}
