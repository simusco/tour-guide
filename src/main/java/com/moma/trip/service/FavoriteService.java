package com.moma.trip.service;

import java.util.List;

import com.moma.trip.po.Favorite;

public interface FavoriteService {

	void favorite(String routeId, String userId);

	List<String> getFavoriteActivityIds(String userId);

	List<Favorite> getFavoriteByUserId(String userId);

}
