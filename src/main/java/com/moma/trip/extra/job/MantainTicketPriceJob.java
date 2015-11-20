package com.moma.trip.extra.job;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.moma.trip.po.HotelPrice;
import com.moma.trip.po.SpotPrice;
import com.moma.trip.po.Ticket;
import com.moma.trip.po.TicketDetail;
import com.moma.trip.po.TicketPrice;
import com.moma.trip.service.HotelService;
import com.moma.trip.service.SpotService;
import com.moma.trip.service.TicketService;

//当spot/hotel价格同步完成后，开始本job运行
public class MantainTicketPriceJob  extends QuartzJobBean {

	@Resource
	private TicketService ticketService;
	
	@Resource
	private HotelService hotelService;
	
	@Resource
	private SpotService spotService;
	
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
						}else{
							tp.setPrice(tp.getPrice().add(hp.getPrice().multiply(new BigDecimal(quantity))));
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
						if(tp == null){
							//表示没有酒店价格计划，因此不生成订单价格
							System.out.println("无酒店");
						}else{
							tp.setPrice(tp.getPrice().add(sp.getPrice().multiply(new BigDecimal(quantity))));
							
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
			}else{
				System.out.println("无门票");
			}
		}
		
		ticketService.mantainTicketPrice(ticketId, tplist);
	}

	@Override
	protected void executeInternal(JobExecutionContext context) throws JobExecutionException {

		List<Ticket> ticketList = ticketService.getAllTicketList();
		
		if(ticketList == null){
			return;
		}
		
		for(int i=0;i<ticketList.size();i++){
			Ticket ticket = ticketList.get(i);
			mantainTicketPrice(ticket);
		}
		
	}
	
}



























