package com.moma.trip.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.moma.framework.ServiceException;
import com.moma.framework.utils.RandomUtils;
import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.mapper.MarketActivityMapper;
import com.moma.trip.po.MarketActivity;
import com.moma.trip.po.Present;
import com.moma.trip.po.PresentAnalye;
import com.moma.trip.service.MarketActivityService;

@Service
public class MarketActivityServiceImpl implements MarketActivityService {

	@Resource
	private MarketActivityMapper marketActivityMapper;
	
	@Transactional(propagation=Propagation.REQUIRED)
	@Override
	public void save(MarketActivity activity) {

		MarketActivity a = marketActivityMapper.getMarketActivityById(activity.getActivityId());
		
		if(a == null){
			throw new ServiceException("不能找到相应活动");
		}
		
		if(activity.getPresents() == null || activity.getPresents().isEmpty()){
			throw  new ServiceException("推广不能一个活动都没有我");
		}
		
		for(Iterator<Present> it = activity.getPresents().iterator();it.hasNext();){
			Present p = it.next();
			validatePresent(p, a);
		}
		
		marketActivityMapper.deletePresentByActivityId(a.getActivityId());
		savePresent(activity, activity.getPresents());
	}

	public void validatePresent(Present p, MarketActivity a){
		
		if(StringUtils.isEmpty(p.getName())){
			throw  new ServiceException("礼品名称不能为空我");
		}
		
		if(p.getQuantity() == null || p.getQuantity() <=0 || p.getQuantity() > 10000){
			throw  new ServiceException("礼品数量填写得有问题吧，不要乱弄^_v_^");
		}
		
		if(p.getQuantity() > a.getRangeEnd() - a.getRangeBegin()){
			throw  new ServiceException("填写数量不能大于随机范围:"+a.getRangeBegin()+ "->" + a.getRangeEnd());
		}
		
	}
	
	public void savePresent(MarketActivity activity, List<Present> presents){
		
		//总数量（电影票、门票、洞子张火锅、英德温泉套餐等）
		Integer quantity = 0;
		for(Iterator<Present> it = presents.iterator();it.hasNext();){
			Present p = it.next();
			quantity += p.getQuantity();
		}
		
		
		List<Integer> excludes = f(activity.getRangeBegin(), activity.getRangeEnd(), quantity);
		for(int i=0;i<excludes.size();){
			for(int j=0;j<presents.size();j++){
				System.out.println("--------------");
				Present present = presents.get(j);
				for(int m = 0;m<present.getQuantity();m++){
					Integer random = excludes.get(i);
					present.setPresentId(UUIDUtils.getUUID());
					present.setAssigned("no");
					present.setRandom(random);
					present.setActivityId(activity.getActivityId());
					
					savePresent(present);
					i++;
					
					System.out.println(i + "-->" + random);
				}
			}
		}
		
	}
	
	private void savePresent(Present present) {
		marketActivityMapper.savePresent(present);
	}

	public List<Integer> f(int min, int max, int quantity){
		List<Integer> excludes = new ArrayList<Integer>();
		
		for(int i=0;i<quantity;i++){
			Integer random = getRandom(min, max, excludes);
			excludes.add(random);
		}
		
		return excludes;
	}

	public Integer getRandom(int min, int max, List<Integer> excludes){
		
		boolean flag = false;
		Integer temp = -1;
		
		do{
			String random = RandomUtils.getRandom(min, max);
			temp = Integer.valueOf(random);
			flag = excludes.contains(temp);
		}while(flag);
		
		return temp;
	}

	@Override
	public List<MarketActivity> getActivityPageList() {

		return marketActivityMapper.getActivityPageList();
	}

	@Override
	public List<PresentAnalye> analyzeByActivityId(String activityId) {

		return marketActivityMapper.analyzeByActivityId(activityId);
	}

}
