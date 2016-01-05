package com.moma.trip.service;

import java.util.List;

import com.moma.framework.pagination.Pagination;
import com.moma.trip.po.AdvImage;
import com.moma.trip.po.Discovery;
import com.moma.trip.po.DiscoveryType;

public interface DiscoveryService {

	public List<DiscoveryType> getDiscoveryTypeList();

	public List<AdvImage> getAdvImageList();

	public List<Discovery> getDiscoveryByType(String discoveryType);

	public void saveDiscovery(Discovery discovery);

	public Pagination getDiscoveryPageList(Pagination pagination);

	public List<Discovery> getDiscoveryList(Discovery discovery);

	public void deleteDiscoveryById(String discoveryId);

}
