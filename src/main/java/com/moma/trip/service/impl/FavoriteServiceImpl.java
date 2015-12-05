package com.moma.trip.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.mapper.FavoriteMapper;
import com.moma.trip.po.Favorite;
import com.moma.trip.service.FavoriteService;

@Service
public class FavoriteServiceImpl implements FavoriteService {

	@Resource
	private FavoriteMapper favoriteMapper;
	
	@Transactional(propagation=Propagation.REQUIRED)
	@Override
	public void favorite(String routeId, String userId) {
		Favorite favorite = new Favorite();
		favorite.setFavoriteId(UUIDUtils.getUUID());
		favorite.setCreateTime(new Date());
		favorite.setUserId(userId);
		favorite.setActivityId(routeId);
		
		Favorite f = favoriteMapper.getFavorite(routeId, userId);
		if(f == null){
			favoriteMapper.save(favorite);
		}else{
			favoriteMapper.delete(routeId, userId);
		}
	}

	@Override
	public List<String> getFavoriteActivityIds(String userId) {
		
		List<String> ids = favoriteMapper.getFavoriteActivityIds(userId);
		if(ids == null)
			return new ArrayList<String>();
		
		return ids;
	}

	@Override
	public List<Favorite> getFavoriteByUserId(String userId) {

		return favoriteMapper.getFavoriteByUserId(userId);
	}

}
