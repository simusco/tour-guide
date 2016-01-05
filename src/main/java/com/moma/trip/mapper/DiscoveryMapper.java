package com.moma.trip.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.moma.trip.po.AdvImage;
import com.moma.trip.po.Discovery;
import com.moma.trip.po.DiscoveryType;

@Repository
public interface DiscoveryMapper{

	List<Discovery> getDiscoveryByType(Map<String, Object> params);

	List<AdvImage> getAdvImageList();

	List<DiscoveryType> getDiscoveryTypeList();

	void saveDiscovery(Discovery discovery);

	Long getDiscoveryPageTotal(Map<String, Object> params);

	List<Discovery> getDiscoveryPageList(Map<String, Object> params);

	List<Discovery> getDiscoveryList(Discovery discovery);

	void deleteDiscoveryById(String discoveryId);

}
