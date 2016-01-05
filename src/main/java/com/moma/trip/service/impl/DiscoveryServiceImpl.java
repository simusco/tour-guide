package com.moma.trip.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.moma.framework.pagination.Pagination;
import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.mapper.DiscoveryMapper;
import com.moma.trip.po.AdvImage;
import com.moma.trip.po.Discovery;
import com.moma.trip.po.DiscoveryType;
import com.moma.trip.service.DiscoveryService;

@Service(value="discoveryService")
public class DiscoveryServiceImpl implements DiscoveryService {

	@Resource
	private DiscoveryMapper discoveryMapper;
	
	@Override
	public List<DiscoveryType> getDiscoveryTypeList() {
		return discoveryMapper.getDiscoveryTypeList();
	}

	@Override
	public List<AdvImage> getAdvImageList() {
		return discoveryMapper.getAdvImageList();
	}

	@Override
	public List<Discovery> getDiscoveryByType(String discoveryType) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("type", discoveryType);
		
		return discoveryMapper.getDiscoveryByType(params);
	}

	@Transactional(propagation=Propagation.REQUIRED)
	@Override
	public void saveDiscovery(Discovery discovery) {
		
		discovery.setDiscoveryId(UUIDUtils.getUUID());
		discovery.setPublishTime(new Date());

		validateDiscovery(discovery);
		
		discoveryMapper.saveDiscovery(discovery);
	}

	private void validateDiscovery(Discovery discovery) {
		
	}

	@Override
	public Pagination getDiscoveryPageList(Pagination pagination) {

		Map<String, Object> params = pagination.map();

		Long total = discoveryMapper.getDiscoveryPageTotal(params);
		List<Discovery> list = discoveryMapper.getDiscoveryPageList(params);

		pagination.setList(list);
		pagination.setTotal(total);

		return pagination;
	}

	@Override
	public List<Discovery> getDiscoveryList(Discovery discovery) {

		return discoveryMapper.getDiscoveryList(discovery);
	}

	@Override
	public void deleteDiscoveryById(String discoveryId) {
		discoveryMapper.deleteDiscoveryById(discoveryId);
	}

}
