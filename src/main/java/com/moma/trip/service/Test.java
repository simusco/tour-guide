package com.moma.trip.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.moma.framework.utils.RandomUtils;
import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.po.MarketActivity;
import com.moma.trip.po.Present;

public class Test {

	public static void main(String[] args) throws Exception {
		MarketActivity activity = new MarketActivity();
		activity.setRangeBegin(100);
		activity.setRangeEnd(1000);
		
		List<Present> presents = new ArrayList<Present>();

		Present present = new Present();
		present.setName("电影票");
		present.setQuantity(6);
		presents.add(present);
		
		Present present2 = new Present();
		present2.setName("门票");
		present2.setQuantity(3);
		presents.add(present2);
		
		Present present3 = new Present();
		present3.setName("洞子张火锅");
		present3.setQuantity(1);
		presents.add(present3);
		
		Test test = new Test();
		test.save(activity, presents);
	}
	
	public void save(MarketActivity activity, List<Present> presents) throws Exception{
		
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
	
}
