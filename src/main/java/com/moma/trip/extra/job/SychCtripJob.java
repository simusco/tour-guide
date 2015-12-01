package com.moma.trip.extra.job;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.moma.trip.extra.ctrip.HotelRequestService;
import com.moma.trip.extra.ctrip.SpotRequestService;
import com.moma.trip.po.Hotel;
import com.moma.trip.po.HotelPrice;
import com.moma.trip.po.Spot;
import com.moma.trip.po.SpotPrice;
import com.moma.trip.po.Ticket;
import com.moma.trip.po.TicketDetail;
import com.moma.trip.po.TicketPrice;
import com.moma.trip.service.HotelService;
import com.moma.trip.service.SpotService;
import com.moma.trip.service.TicketService;

public class SychCtripJob extends QuartzJobBean {

	private static Logger logger = Logger.getLogger(SychCtripJob.class);  
	
	private HotelRequestService hotelRequestService;
	private SpotRequestService spotRequestService;
	private HotelService hotelService;
	private SpotService spotService;
	private TicketService ticketService;

	@Override
	protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
		// 同步门票
		sychSpot();
		// 同步酒店
		sychHotel();
		// 生成ticket,spot/hotel应该是异步方式
		sychTicketPrice();
	}

	protected void sychTicketPrice() {
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

	protected void sychHotel() {
		try {
			Long s = new Date().getTime();
			System.out.println("开始同步酒店价格计划" + s);

			List<Hotel> hotelList = hotelService.getKnownHotelList();

			Calendar now = Calendar.getInstance();
			now.setTime(new Date());
			now.add(Calendar.DAY_OF_MONTH, -1);
			
			String startTime = new SimpleDateFormat("yyyy-MM-dd").format(now.getTime());
			Calendar c = Calendar.getInstance();
			c.setTime(new Date());
			c.add(Calendar.DAY_OF_MONTH, 28);
			String endTime = new SimpleDateFormat("yyyy-MM-dd").format(c.getTime());

			hotelRequestService.sychHotelRatePlan(hotelList, startTime, endTime);

			Long e = new Date().getTime();
			System.out.println("酒店价格计划同步结束 " + (e - s) + "ms");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void sychSpot() {
		try {
			Long s = new Date().getTime();
			System.out.println("开始同步携程名票信息" + s);

			List<Spot> spotList = spotService.getKnownSpotList();

			Calendar now = Calendar.getInstance();
			now.setTime(new Date());
			now.add(Calendar.DAY_OF_MONTH, -1);
			
			String startTime = new SimpleDateFormat("yyyy-MM-dd").format(now.getTime());
			Calendar c = Calendar.getInstance();
			c.setTime(new Date());
			c.add(Calendar.DAY_OF_MONTH, 28);
			String endTime = new SimpleDateFormat("yyyy-MM-dd").format(c.getTime());

			spotRequestService.sychSpot(spotList, startTime, endTime);

			Long e = new Date().getTime();
			System.out.println("门票信息同步结束 " + (e - s) + "ms");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void mantainTicketPrice(Ticket ticket){
		
		String  ticketId = ticket.getTicketId(), 
				hotelCodes = ticket.getHotelCode(), 
				spotCodes = ticket.getSpotCode();
		
		Map<String, Integer> quantityMap = new HashMap<String, Integer>();
		List<TicketDetail> tdlist = ticketService.getTicketDetailList(ticketId);
		for(int i=0;i<tdlist.size();i++){
			TicketDetail td = tdlist.get(i);
			
			if(td.getQuantity() > 1){
				quantityMap.put(td.getType() +"-" + td.getCode1() + "-" + td.getCode2(), td.getQuantity());
			}
		}
		
		Map<String, TicketPrice> priceMap = new HashMap<String, TicketPrice>();
		
		if(hotelCodes != null && !"".equals(hotelCodes)){
			String[] hcs = hotelCodes.split(",");
			
			for(int i=0;i<hcs.length;i++){
				String hc = hcs[i];//拿到酒店编码
				List<HotelPrice> hotelPrices = hotelService.getHotelNewPrice(hc.split("-")[0], hc.split("-")[1]);//获取酒店价格
				Integer quantity = quantityMap.get("HOTEL-" + hc);
				quantity = quantity == null ? 1 : quantity;
				
				if(hotelPrices != null){
					for(int j=0;j<hotelPrices.size();j++){
						HotelPrice hp = hotelPrices.get(j);
						String d = hp.getYear() + hp.getMonth() + hp.getDay();
						
						TicketPrice tp = priceMap.get(d);
						if(tp == null){
							tp = new TicketPrice();
							tp.setTicketId(ticketId);
							tp.setYear(hp.getYear());
							tp.setMonth(hp.getMonth());
							tp.setDay(hp.getDay());
							tp.setPrice(hp.getPrice().multiply(new BigDecimal(quantity)));
							
							BigDecimal marketPrice = new BigDecimal(hp.getMarketPrice() == null ? "0" : hp.getMarketPrice()).multiply(new BigDecimal(quantity));
							tp.setMarketPrice(marketPrice);
						}else{
							tp.setPrice(tp.getPrice().add(hp.getPrice().multiply(new BigDecimal(quantity))));
							
							BigDecimal marketPrice = new BigDecimal(hp.getMarketPrice() == null ? "0" : hp.getMarketPrice()).multiply(new BigDecimal(quantity));
							tp.setMarketPrice(tp.getMarketPrice().add(marketPrice));
							
						}
						priceMap.put(d, tp);
					}
				}
			}
		}
		
		//如果酒店对应有门票，标记为true,以方便后面移除那些没有门票的酒店
		Map<String, Boolean> flagMap = new HashMap<String, Boolean>();
		if(spotCodes != null){
			String[] scs = spotCodes.split(",");
			for(int i=0;i<scs.length;i++){
				String sc = scs[i];//拿到景点编码
				List<SpotPrice> spotPrices = spotService.getSpotNewPrice(sc.split("-")[0], sc.split("-")[1]);//获取酒店价格
				Integer quantity = quantityMap.get("SPOT-" + sc);
				quantity = quantity == null ? 1 : quantity;
				
				if(spotPrices != null){
					for(int j=0;j<spotPrices.size();j++){
						SpotPrice sp = spotPrices.get(j);
						String d = sp.getYear() + sp.getMonth() + sp.getDay();
						
						TicketPrice tp = priceMap.get(d);
						if(tp != null){
							tp.setPrice(tp.getPrice().add(sp.getPrice().multiply(new BigDecimal(quantity))));
							
							System.out.println(d + ",hotel-price:"+tp.getMarketPrice());
							System.out.println(d + ",spot-price:"+sp.getMarketPrice());
							
							BigDecimal marketPrice = (sp.getMarketPrice() == null ? new BigDecimal("0") : sp.getMarketPrice()).multiply(new BigDecimal(quantity));
							tp.setMarketPrice(tp.getMarketPrice().add(marketPrice));
							
							//存入value
							priceMap.put(d, tp);
							//标记
							flagMap.put(d, true);
						}
					}
				}
			}
		}
		
		List<TicketPrice> tplist = new ArrayList<TicketPrice>();
		for(Iterator<String> it = priceMap.keySet().iterator();it.hasNext();){
			String key = it.next();
			if(flagMap.containsKey(key)){
				tplist.add(priceMap.get(key));
			}
		}
		
		ticketService.mantainTicketPrice(ticket, tplist);
	}

	public HotelRequestService getHotelRequestService() {
		return hotelRequestService;
	}

	public void setHotelRequestService(HotelRequestService hotelRequestService) {
		this.hotelRequestService = hotelRequestService;
	}

	public SpotRequestService getSpotRequestService() {
		return spotRequestService;
	}

	public void setSpotRequestService(SpotRequestService spotRequestService) {
		this.spotRequestService = spotRequestService;
	}

	public HotelService getHotelService() {
		return hotelService;
	}

	public void setHotelService(HotelService hotelService) {
		this.hotelService = hotelService;
	}

	public SpotService getSpotService() {
		return spotService;
	}

	public void setSpotService(SpotService spotService) {
		this.spotService = spotService;
	}

	public TicketService getTicketService() {
		return ticketService;
	}

	public void setTicketService(TicketService ticketService) {
		this.ticketService = ticketService;
	}

	public static void main(String[] args){
		Calendar now = Calendar.getInstance();
		now.setTime(new Date());
		now.add(Calendar.DAY_OF_MONTH, -1);
		
		String startTime = new SimpleDateFormat("yyyy-MM-dd").format(now.getTime());
		Calendar c = Calendar.getInstance();
		c.setTime(new Date());
		c.add(Calendar.DAY_OF_MONTH, 28);
		String endTime = new SimpleDateFormat("yyyy-MM-dd").format(c.getTime());
		
		System.out.println(startTime);
		System.out.println(endTime);
	}
	
}
