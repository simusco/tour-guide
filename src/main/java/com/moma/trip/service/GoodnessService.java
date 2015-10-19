package com.moma.trip.service;

import java.util.List;

import com.moma.trip.po.Goodness;

public interface GoodnessService {

	void saveGoodness(Goodness goodness);

	List<Goodness> getGoodnessByActivityId(String activityPlanId);

	void deleteGoodnessById(String id);

}
