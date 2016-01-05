<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="application/vnd.wap.xhtml+xml;charset=utf-8" />
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no,minimal-ui">
	<meta name="apple-mobile-web-app-capable" content="no">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	
	<title>发现</title>
	
	<link rel="stylesheet" href="../../styles/base.css">
	<style type="text/css">
		
		/*公共部分*/
		body{
			background-color: #ededed;
		}
		
		.clearfix{
			overflow:hidden;
			_zoom:1;
		}
		
		.bl1{
			border-left:1px solid #ededed;
		}
		
		.bb1{
			border-bottom:1px solid #ededed;
		}
		
		.mtl{
			margin-top: 10px;
		}
		
		.content{
			margin-left:10px;
			margin-right:10px;
		}
		
		.content__search{
			height: 40px;
			background-color: rgb(195,195,195);
			border-radius:4px;
		}
		
		/*广告图*/
		.adv{
			width: 100%;
		}
		
		.adv img{
			width: 100%;
		}
		
		/*table 样式*/
		.table{
			border-radius:4px;
			border:none;
			background-color: #fff;
		}
		
		.table__header{
			height:30px;
			line-height:30px;
			font-size:14px;
			border-bottom: 1px solid #ededed;
		}
		
		.table__body{
		}
		
		.table__row{
			
		}
		
		.table__cell{
			display: inline-block;
			width: 25%;
			float: left;
			font-size:12px;
			text-align: center;
			vertical-align: middle;
			height: 35px;
			line-height: 35px;
		}
		
		
		.title{
			font-size:12px;
			color:#999;
		}
		
		/*search 框的样式*/
		.search {
			padding: 7px 30px 0 30px;
		}
		
		.search__wrap {
			background-color: #f3f3f3;
			border-radius: 15px;
			font-size: 1.2rem;
			padding: 0 35px 0 12px;
			position: relative;
		}
		
		.search__wrap input {
			width: 100%;
			border: 0;
			outline: 0;
			height: 26px;
			padding: 0;
			background: 0;
			border-radius: 13px;
			font-size: 1.2rem;
		}
		
		/*common*/
		.btn {
			border: 0;
		}
		
		.btn--search {
			width: 35px;
			height: 30px;
			background: url(../../images/m/btn_search2.png) 8px 4px no-repeat;
			background-size: 17px 17px;
			position: absolute;
			right: 0;
			top: 0;
		}
		
	</style>
</head>
<body>

	<header class="header">
		<div class="adv">
			<img src="../../images/m/adv.jpg"/>
		</div>
	</header>
	
	<section class="content mtl">
		<div class="content__search">
			<div class="search">
				<form class="search__wrap" action="#">
					<input type="text" placeholder="输入查询关键字" value="${tag }" class="J_search_input">
					<button class="btn btn--search J_btn_query" type="button"></button>
				</form>
			</div>
		</div>
	
		<div class="title mtl">热门搜索</div>
		
		<div class="table clearfix mtl">
			<div class="table__header">&nbsp;吃</div>
			<div class="table__body clearfix">
				<div class="table__row clearfix">
					<span class="table__cell bb1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=火锅">火锅</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=自助餐">自助餐</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=西餐">西餐</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=海鲜">海鲜</a></span>
				</div>
				<div class="table__row clearfix">
					<span class="table__cell bb1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=烧烤">烧烤</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=料理">料理</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=素菜">素菜</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=创意菜">创意菜</a></span>
				</div>
				<div class="table__row clearfix">
					<span class="table__cell bb1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=小吃">小吃</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=粤菜">粤菜</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=川菜">川菜</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=湘菜">湘菜</a></span>
				</div>
				<div class="table__row clearfix">
					<span class="table__cell bb1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=东南亚菜">东南亚菜</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=面包甜点">面包甜点</a></span>
					<span class="table__cell bb1 bl1 J_search_tag">&nbsp;</span>
					<span class="table__cell bb1 bl1 J_search_tag">&nbsp;</span>
				</div>
			</div>
		</div>
		
		<div class="table clearfix mtl">
			<div class="table__header">&nbsp;喝</div>
			<div class="table__body clearfix">
				<div class="table__row clearfix">
					<span class="table__cell bb1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=咖啡">咖啡</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=奶茶">奶茶</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=皇茶">皇茶</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=酒吧">酒吧</a></span>
				</div>
				<div class="table__row clearfix">
					<span class="table__cell bb1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=茶">茶</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=鸡尾酒">鸡尾酒</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=啤酒">啤酒</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=红酒">红酒</a></span>
				</div>
			</div>
		</div>
		
		<div class="table clearfix mtl">
			<div class="table__header">&nbsp;玩</div>
			<div class="table__body clearfix">
				<div class="table__row clearfix">
					<span class="table__cell bb1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=户外">户外</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=温泉">温泉</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=游乐场">游乐场</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=电影">电影</a></span>
				</div>
				<div class="table__row clearfix">
					<span class="table__cell bb1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=KTV">KTV</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=密室">密室</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=真人CS">真人CS</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=采摘">采摘</a></span>
				</div>
				<div class="table__row clearfix">
					<span class="table__cell bb1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=农家乐">农家乐</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=桌游">桌游</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=棋牌">棋牌</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=DIY手工坊">DIY手工坊</a></span>
				</div>
				<div class="table__row clearfix">
					<span class="table__cell bb1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=摄影">摄影</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=音乐">音乐</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=亲子">亲子</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=宠物">宠物</a></span>
				</div>
				<div class="table__row clearfix">
					<span class="table__cell bb1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=演出赛事">演出赛事</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=运动">运动</a></span>
					<span class="table__cell bb1 bl1 J_search_tag">&nbsp;</span>
					<span class="table__cell bb1 bl1 J_search_tag">&nbsp;</span>
				</div>
			</div>
		</div>
		
		<div class="table clearfix mtl">
			<div class="table__header">&nbsp;住</div>
			<div class="table__body clearfix">
				<div class="table__row clearfix">
					<span class="table__cell bb1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=青年旅社">青年旅社</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=民宿">民宿</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=客栈">客栈</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=浪漫">浪漫</a></span>
				</div>
				<div class="table__row clearfix">
					<span class="table__cell bb1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=树屋">树屋</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=别墅">别墅</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=公寓">公寓</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=旅馆">旅馆</a></span>
				</div>
				<div class="table__row clearfix">
					<span class="table__cell bb1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=度假屋">度假屋</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=亲子">亲子</a></span>
					<span class="table__cell bb1 bl1 J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=特色">特色</a></span>
					<span class="table__cell bb1 bl1 J_search_tag">&nbsp;</span>
				</div>
			</div>
		</div>
	</section>
	
	<section class="footer mtl"></section>
	
	<script src="../../scripts/zepto.js" type="text/javascript"></script>
	<script src="../../scripts/web/swip.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		function search(tag){
			var url = encodeURI('<%=request.getContextPath()  %>/m/discovery/search.html?tag=' + tag);
			window.location.href = url;
		}
	
		$(function(){
			$('.J_btn_query').tap(function(){
				var text = $(this).parent().find('input[type=text]').val();
				if(text != ''){
					search(text);
				}
			});
			
			$('.J_search_input').on('keyup',function(e){
				if(e.keyCode == 13){
					search($(this).val());
				}
			});
		});
	</script>
	
</body>
</html>