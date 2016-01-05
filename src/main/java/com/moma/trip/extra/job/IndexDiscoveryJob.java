package com.moma.trip.extra.job;

import java.util.List;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.moma.trip.lucene.SearchDiscovery;
import com.moma.trip.po.Discovery;
import com.moma.trip.service.DiscoveryService;

public class IndexDiscoveryJob extends QuartzJobBean {

	private DiscoveryService discoveryService;

	@Override
	protected void executeInternal(JobExecutionContext arg0) throws JobExecutionException {

		List<Discovery> list = discoveryService.getDiscoveryByType(null);
		new SearchDiscovery().createIndex(list);

	}

	public DiscoveryService getDiscoveryService() {
		return discoveryService;
	}

	public void setDiscoveryService(DiscoveryService discoveryService) {
		this.discoveryService = discoveryService;
	}

}
