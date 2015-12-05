package com.moma.trip.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.Favorite;

@Repository
public interface FavoriteMapper {

	void save(Favorite favorite);

	Favorite getFavorite(String routeId, String userId);

	void delete(String routeId, String userId);

	List<String> getFavoriteActivityIds(String userId);
	
	List<Favorite> getFavoriteByUserId(String userId);

}
