package com.moma.trip.service.impl;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.moma.framework.extra.ctrip.dto.HotelRate;
import com.moma.framework.extra.ctrip.dto.HotelRatePlan;
import com.moma.framework.utils.UUIDUtils;
import com.moma.trip.mapper.HotelMapper;
import com.moma.trip.po.Hotel;
import com.moma.trip.po.HotelPrice;
import com.moma.trip.service.HotelService;

@Service("hotelService")
public class HotelServiceImpl implements HotelService {

	@Resource
	private HotelMapper hotelMapper;
	
	@Override
	public List<Hotel> getKnownHotelList() {
		
		return hotelMapper.getKnownHotelList();
	}
	
	@Transactional(propagation=Propagation.REQUIRED)
	public void saveHotelRatePlan(List<HotelRatePlan> list){
		
		if(list != null){
			for(int i=0;i<list.size();i++){
				HotelRatePlan htp = list.get(i);

				Hotel hotel = hotelMapper.getHotel(htp.getHotelCode(), htp.getRatePlanCode());
				
				List<HotelRate> rateList = htp.getRateList();
				
				if(rateList != null){
					hotelMapper.deleteHotelPrice(hotel.getHotelId());
					
					for(int j=0;j<rateList.size();j++){
						HotelRate hr = rateList.get(j);
						
						//save hotel price.
						HotelPrice hotelPrice = new HotelPrice();
						hotelPrice.setHotelPriceId(UUIDUtils.getUUID());
						hotelPrice.setHotelId(hotel.getHotelId());
						hotelPrice.setPrice(new BigDecimal(hr.getAmountBeforeTax()));
						hotelPrice.setMarketPrice(hr.getListPrice());
						hotelPrice.setMealsIncluded(hr.getMealsIncluded());
						hotelPrice.setNumberOfBreakfast(hr.getNumberOfBreakfast());
						
						String start = hr.getStart();
						String[] ymd = start.split("-");
						
						hotelPrice.setYear(ymd[0]);
						hotelPrice.setMonth(ymd[1]);
						hotelPrice.setDay(ymd[2].split(" ")[0]);
						
						Calendar c = Calendar.getInstance();
						c.set(
							Integer.parseInt(hotelPrice.getYear()), 
							Integer.parseInt(hotelPrice.getMonth()) - 1, 
							Integer.parseInt(hotelPrice.getDay())
						);
						hotelPrice.setDate(c.getTime());
						
						hotelMapper.saveHotelPrice(hotelPrice);
					}
				}
			}
		}
		
	}

	@Override
	public List<HotelPrice> getHotelNewPrice(String code1, String code2) {
		return hotelMapper.getHotelNewPrice(code1, code2);
	}

	@Override
	public Double getHotelPrice(Date start, Date end, String code1, String code2) {
		return hotelMapper.getHotelPrice(start, end, code1, code2);
	}
	
}
