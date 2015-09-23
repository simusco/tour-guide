package com.moma.trip.weixin.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.json.JSONException;
import org.apache.struts2.json.JSONUtil;

import com.moma.trip.weixin.po.Button;
import com.moma.trip.weixin.po.ClickMenu;
import com.moma.trip.weixin.po.ViewMenu;

public class GenerateMenu {

	public static void main(String[] args) {

		ViewMenu  btn1 = new ViewMenu("攻略", "http://www.baidu.com");
		ClickMenu  btn2 = new ClickMenu("导游", "BTN_TOUR_GUIDE");
		
		/*其它*/
		ViewMenu  help = new ViewMenu("帮助", "http://www.xunlei.com");
		ViewMenu  myorder = new ViewMenu("我的订单", "http://www.myorder.com");
		
		Button other = new Button("其它");
		other.addSubButton(myorder);
		other.addSubButton(help);
	
		//主菜单
		List<Object> menuList = new ArrayList<Object>();
		menuList.add(btn1);
		menuList.add(btn2);
		menuList.add(other);
		
		Map<String, List<Object>> root = new HashMap<String, List<Object>>();
		root.put("button", menuList);
		
		try {
			String str = JSONUtil.serialize(root);
			String msg = MenuUtil.createMenu(str);
			
			System.out.println(msg);
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}

}
