package com.moma.trip.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.Goodness;

@Repository
public interface GoodnessMapper {

	public void saveGoodness(Goodness goodness);

	public List<Goodness> getGoodnessByActivityId(String activityPlanId);

}
