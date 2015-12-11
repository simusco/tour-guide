package com.moma.trip.extra.job;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import com.moma.framework.ServiceException;
import com.moma.trip.po.HotelPrice;
import com.moma.trip.po.SpotPrice;
import com.moma.trip.po.Ticket;
import com.moma.trip.po.TicketDetail;
import com.moma.trip.po.TicketPrice;
import com.moma.trip.service.HotelService;
import com.moma.trip.service.SpotService;
import com.moma.trip.service.TicketService;

public class MantainTicketPriceTask  extends Thread {

	private HotelService hotelService;
	private SpotService spotService;
	private TicketService ticketService;

	public MantainTicketPriceTask(TicketService ticketService, HotelService hotelService, SpotService spotService){
		this.ticketService = ticketService;
		this.hotelService = hotelService;
		this.spotService = spotService;
	}
	
	public void run() {
		System.out.println("开始合并订单");
		List<Ticket> ticketList = ticketService.getAllTicketList();

		if (ticketList == null) {
			return;
		}

		for (int i = 0; i < ticketList.size(); i++) {
			Ticket ticket = ticketList.get(i);
			mantainTicketPrice(ticket);
		}
		System.out.println("合并订单结束");
	}
	
	public void mantainTicketPrice(Ticket ticket) {

		// 获取所有ticket-detail
		List<TicketDetail> ticketDetailList = ticketService.getTicketDetailList(ticket.getTicketId(), null);
		if (ticketDetailList == null) {
			throw new ServiceException("没有发现套餐下有跟详细的信息");
		}

		// 对ticketDetail 进行分类。
		Map<String, List<TicketDetail>> ticketDetailGroups = new HashMap<String, List<TicketDetail>>();

		for (TicketDetail ticketDetail : ticketDetailList) {
			String group = ticketDetail.getGroupCode();

			List<TicketDetail> tdlist = ticketDetailGroups.get(group);
			if (tdlist == null) {
				tdlist = new ArrayList<TicketDetail>();
				ticketDetailGroups.put(group, tdlist);
			}

			tdlist.add(ticketDetail);
		}

		for (Iterator<String> it = ticketDetailGroups.keySet().iterator(); it.hasNext();) {

			String key = it.next();
			List<TicketDetail> tdlist = ticketDetailGroups.get(key);

			// 判断每一个ticketDetail的ispay == yes,表示需要计算。
			// 取出code1/code2
			// 根据code及类型获取价格
			// 合并计算价格

			if (tdlist == null)
				continue;

			Map<String, TicketPrice> hotelPriceMap = new HashMap<String, TicketPrice>();
			Map<String, TicketPrice> spotPriceMap = new HashMap<String, TicketPrice>();

			boolean hashotel = false;
			boolean haspot = false;
			
			for (int i = 0; i < tdlist.size(); i++) {
				TicketDetail td = tdlist.get(i);

				if ("yes".equals(td.getIsPay())) {
					if (StringUtils.isEmpty(td.getCode1()) || StringUtils.isEmpty(td.getCode2())) {
						throw new ServiceException("套餐详细信息的外部code码有误");
					}

					if ("HOTEL".equals(td.getType())) {
						hashotel = true;
						getHotelTicketPrice(ticket.getTicketId(), key, td, hotelPriceMap);
					}

					if ("SPOT".equals(td.getType())) {
						haspot = true;
						getSpotTicketPrice(ticket.getTicketId(), key, td, spotPriceMap);
					}
				}
			}
			
			//酒店门票都有
			if(hashotel && haspot){
				//合并
				List<TicketPrice> tplist = new ArrayList<TicketPrice>();
				for(Iterator<String> iit = hotelPriceMap.keySet().iterator();iit.hasNext();){
					String ikey = iit.next();
					TicketPrice itvalue = hotelPriceMap.get(ikey);
					TicketPrice isvalue = spotPriceMap.get(ikey);
					
					if(itvalue != null && isvalue != null){
						itvalue.setPrice(itvalue.getPrice().add(isvalue.getPrice()));
						itvalue.setMarketPrice(itvalue.getMarketPrice().add(isvalue.getMarketPrice()));
						
						if(!tplist.contains(itvalue))
							tplist.add(itvalue);
					}
				}
				//save itvalue;
				ticketService.mantainTicketPrice(ticket, key, tplist);
			}else if(hashotel && !haspot){
				//如果精油酒店
				List<TicketPrice> tplist = new ArrayList<TicketPrice>();
				for (Iterator<String> iit = hotelPriceMap.keySet().iterator(); iit.hasNext();) {
					tplist.add(hotelPriceMap.get(iit.next()));
				}

				ticketService.mantainTicketPrice(ticket, key, tplist);
			}else if(!hashotel && haspot){
				//如果精油酒店
				List<TicketPrice> tplist = new ArrayList<TicketPrice>();
				for (Iterator<String> iit = spotPriceMap.keySet().iterator(); iit.hasNext();) {
					tplist.add(spotPriceMap.get(iit.next()));
				}

				ticketService.mantainTicketPrice(ticket, key, tplist);
			}

		}

	}
	
	public void getSpotTicketPrice(String ticketId, String group, TicketDetail td, Map<String, TicketPrice> hotelPriceMap){
		List<SpotPrice> spotPrices = spotService.getSpotNewPrice(td.getCode1(), td.getCode2());// 获取酒店价格
		for (int j = 0; spotPrices != null && j < spotPrices.size(); j++) {
			SpotPrice sp = spotPrices.get(j);
			String d = sp.getYear() + sp.getMonth() + sp.getDay();

			TicketPrice tp = hotelPriceMap.get(d);
			if (tp == null) {
				tp = new TicketPrice();
				tp.setTicketId(ticketId);
				tp.setYear(sp.getYear());
				tp.setMonth(sp.getMonth());
				tp.setDay(sp.getDay());
				tp.setPrice(sp.getPrice().multiply(new BigDecimal(td.getQuantity())));
				tp.setGroupCode(group);

				BigDecimal marketPrice = (sp.getMarketPrice() == null ? new BigDecimal("0") : sp.getMarketPrice()).multiply(new BigDecimal(td.getQuantity()));
				tp.setMarketPrice(marketPrice);
			}else{
				tp.setPrice(tp.getPrice().add(sp.getPrice().multiply(new BigDecimal(td.getQuantity()))));
				BigDecimal marketPrice = (sp.getMarketPrice() == null ? new BigDecimal("0") : sp.getMarketPrice()).multiply(new BigDecimal(td.getQuantity()));
				tp.setMarketPrice(tp.getMarketPrice().add(marketPrice));
			}
			
			hotelPriceMap.put(d, tp);
		}
	}
	
	public void getHotelTicketPrice(String ticketId, String group, TicketDetail td, Map<String, TicketPrice> hotelPriceMap){
		List<HotelPrice> hotelPrices = hotelService.getHotelNewPrice(td.getCode1(), td.getCode2());// 获取酒店价格
		for (int j = 0; hotelPrices != null && j < hotelPrices.size(); j++) {

			HotelPrice hp = hotelPrices.get(j);
			String d = hp.getYear() + hp.getMonth() + hp.getDay();

			TicketPrice tp = hotelPriceMap.get(d);
			if (tp == null) {
				tp = new TicketPrice();
				tp.setTicketId(ticketId);
				tp.setYear(hp.getYear());
				tp.setMonth(hp.getMonth());
				tp.setDay(hp.getDay());
				tp.setPrice(hp.getPrice().multiply(new BigDecimal(td.getQuantity())));
				tp.setGroupCode(group);

				BigDecimal marketPrice = new BigDecimal(
						hp.getMarketPrice() == null ? "0" : hp.getMarketPrice())
								.multiply(new BigDecimal(td.getQuantity()));
				tp.setMarketPrice(marketPrice);
			} else {
				tp.setPrice(tp.getPrice().add(hp.getPrice().multiply(new BigDecimal(td.getQuantity()))));
				BigDecimal marketPrice = new BigDecimal(hp.getMarketPrice() == null ? "0" : hp.getMarketPrice()).multiply(new BigDecimal(td.getQuantity()));
				tp.setMarketPrice(tp.getMarketPrice().add(marketPrice));
			}

			hotelPriceMap.put(d, tp);
		}
		
	}
	
}
