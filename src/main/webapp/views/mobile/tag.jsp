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
	
	<title>查询</title>

	<link rel="stylesheet" href="${staticServerPath1 }/styles/pages/mobile.css">

	<style type="text/css">
		body{
			background-color: #f2f2f2;
		}

		.clearfix {
		  zoom: 1;
		}

		.clearfix:after {
		  content: " ";
		  display: block;
		  clear: both;
		  height: 0;
		}
		

		.content{
			margin: 0px 5px;
		}

		.content__category{
			width: 100%;
		}

		.category{
			box-sizing:border-box;
			background-color: #fff;
			margin-top: 9px;
			padding:3px 12px;
			border-radius: 6px;
		}

		.category:first-child{
			margin-top: 0px;
			border-top-right-radius:0;
			border-top-left-radius:0;
		}

		.category__title{
			box-sizing:border-box;
			font-size: 15px;
			padding-left: 25px;
			line-height: 30px;
			font-weight: 700;
		}

		.category__title--eat{
			background:url('${staticServerPath1 }/images/mobile/eat.png') no-repeat left 1px;
			color:#f45832;
			background-size:22px 24px;
		}

		.category__title--drink{
			background:url('${staticServerPath1 }/images/mobile/drink.png') no-repeat left 1px;
			color:#3fbbdd;
			background-size:22px 24px;
		}

		.category__title--play{
			background:url('${staticServerPath1 }/images/mobile/play.png') no-repeat left -1px;
			color:#98cc44;
			background-size:22px 24px;
		}

		.category__title--hotel{
			background:url('${staticServerPath1 }/images/mobile/hotel.png') no-repeat left 1px;
			color:#f41a70;
			background-size:22px 24px;
		}

		.category__detail{

		}

		.category__detail .row{
			border-bottom: 1px solid #e7e7e7;
		}

		.category__detail .row:last-child{
			border-bottom: none;
		}

		.category__detail .row:after {
		  content: " ";
		  display: block;
		  clear: both;
		  height: 0;
		}

		.category__detail .row span{
			height: 35px;
			display: block;
			float: left;
			width: 25%;
			text-align: center;
		}

		.category__detail .row span a{
			display: block;
			border-left: 1px solid #e7e7e7;
			line-height: 25px;
			margin: 5px 0px;
		}

		.category__detail .row span:first-child a{
			border-left: none;
		}

		.category__detail .row span a,
		.category__detail .row span a:active,
		.category__detail .row span a:link{
			text-decoration: none;
			color: #6b6b6b;
			font-size: 12px;
		}

		/*头部的样式*/
		.header__adv img{
			width: 100%;
		}


		/*查询样式*/
		.search{
			box-sizing: border-box;
			margin: 0px 5px;
			padding:5px;
			padding-bottom: 0px;
		}

		.search__wraper{
			width: 90%;
			margin: 0px auto;
		}

		.search__input{
			box-sizing: border-box;
			padding:5px 30px 5px 30px;
			background-color: #d1cfd0;
			position: relative;
			border-radius: 3px;
		}

		.search__input input[type=text]{
			width: 100%;
			line-height: 20px;
			border-radius: 12px;
			border: 0;
			outline: 0;
			font-size: 12px;
			text-indent: 12px;
		}

		.search__caption span{
			color:#6b6b6b;
			font-size:12px;
			line-height: 35px;
		}

		.btn {
			border: 0;
		}
		
		.btn--search {
			width: 30px;
			height: 25px;
			background: url(${staticServerPath1 }/images/mobile/btn_search2.png) 8px 4px no-repeat;
			background-size: 17px 17px;
			position: absolute;
			right: 40px;
			top: 5px;
		}
	
		/*搜索框样式2*/
		.search2{
			background-color:#fff;
			box-sizing: border-box;
			margin: 0px 5px;
		}

		.search2__caption{
			box-sizing:border-box;
			line-height:28px;
			border:1px dashed #ddd;
			border-left:none;
			border-right:none;
			text-align:center;
			font-size:12px;
			padding:0px 10px
		}

		.search2__caption > span > span{
			color:#26dab5;
		}
		
		.search2__caption.text-left{
			text-align: left;
		}
		
		.search2__caption.tag-title{
			background-color: #f2f2f2;
		}

		.search2__wraper{
			box-sizing: border-box;
			width:100%;
			padding:12px 10px;
		}

		.search2__input{
			position:relative;
		}

		.search2__input input[type=text]{
			width:100%;
			height:36px;
			border:1px solid #26dab5;
			outline: 0;
			text-indent:5px;
			-webkit-appearance:none;
			-moz-appearance:none;
			appearance:none;
		}

		.btn--search2{
			width:40px;
			height:36px;
			background:#26dab5 url("${staticServerPath1 }/images/mobile/search.png") no-repeat center center;
			background-size:24px 24px;
			position:absolute;
			right:0px;
			top:0px;
		}

		.btn--delete{
			width:36px;
			height:36px;
			background:url("${staticServerPath1 }/images/mobile/delete.png") no-repeat center center;
			background-size:24px 24px;
			position:absolute;
			right:40px;
			top:0px;
			display:none;
		}

		.btn--show{display:inline-block;}
		.btn--hide{display:none;}
		
	</style>

</head>
<body>

	<header class="header">
		<div class="header__adv">
			<img src="${staticServerPath1 }/images/mobile/adv.jpg">
		</div>
	</header>

	<%-- <section class="search">
		<div class="search__wraper">
			<form class="search__input" action="#">
				<input type="text" placeholder="输入查询关键字" value="${tag }" class="J_search_input">
				<button class="btn btn--search J_btn_query" type="button"></button>
			</form>
		</div>
		<div class="search__caption"><span>热门搜索</span></div>
	</section> --%>
	
	<section class="search2">
		<div class="search2__wraper">
			<form class="search2__input" action="#">
				<input type="text" placeholder="输入查询关键字" value="${tag }" class="J_search_input">
				<button class="btn btn--delete J_btn_delete" type="button"></button>
				<button class="btn btn--search2 J_btn_query" type="button"></button>
			</form>
		</div>
		<div class="search2__caption tag-title text-left">
			<span>热门搜索</span>
		</div>
	</section>

	<section class="content">
		<div class="content__category">
			<div class="category">
				<div class="category__title category__title--eat">吃</div>
				<div class="category__detail">
					<div class="row">
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=火锅">火锅</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=自助餐">自助餐</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=西餐">西餐</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=海鲜">海鲜</a></span>
					</div>
					<div class="row">
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=烧烤">烧烤</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=料理">料理</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=素菜">素菜</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=创意菜">创意菜</a></span>
					</div>
					<div class="row">
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=小吃">小吃</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=粤菜">粤菜</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=川菜">川菜</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=湘菜">湘菜</a></span>
					</div>
					<div class="row">
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=东南亚菜">东南亚菜</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=面包甜点">面包甜点</a></span>
						<span class="J_search_tag">&nbsp;</span>
						<span class="J_search_tag">&nbsp;</span>
					</div>
				</div>
			</div>

			<div class="category">
				<div class="category__title category__title--drink">喝</div>
				<div class="category__detail">
					<div class="row">
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=咖啡">咖啡</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=奶茶">奶茶</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=皇茶">皇茶</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=酒吧">酒吧</a></span>
					</div>
					<div class="row">
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=茶">茶</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=鸡尾酒">鸡尾酒</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=啤酒">啤酒</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=红酒">红酒</a></span>
					</div>
				</div>
			</div>

			<div class="category">
				<div class="category__title category__title--play">玩</div>
				<div class="category__detail">
					<div class="row">
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=户外">户外</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=温泉">温泉</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=游乐场">游乐场</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=电影">电影</a></span>
					</div>
					<div class="row">
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=KTV">KTV</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=密室">密室</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=真人CS">真人CS</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=采摘">采摘</a></span>
					</div>
					<div class="row">
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=农家乐">农家乐</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=桌游">桌游</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=棋牌">棋牌</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=DIY手工坊">DIY手工坊</a></span>
					</div>
					<div class="row">
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=摄影">摄影</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=音乐">音乐</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=亲子">亲子</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=宠物">宠物</a></span>
					</div>
					<div class="row">
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=演出赛事">演出赛事</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=运动">运动</a></span>
						<span class="J_search_tag">&nbsp;</span>
						<span class="J_search_tag">&nbsp;</span>
					</div>
				</div>
			</div>

			<div class="category">
				<div class="category__title category__title--hotel">住</div>
				<div class="category__detail">
					<div class="row">
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=青年旅社">青年旅社</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=民宿">民宿</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=客栈">客栈</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=浪漫">浪漫</a></span>
					</div>
					<div class="row">
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=树屋">树屋</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=别墅">别墅</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=公寓">公寓</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=旅馆">旅馆</a></span>
					</div>
					<div class="row">
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=度假屋">度假屋</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=亲子">亲子</a></span>
						<span class="J_search_tag"><a href="<%=request.getContextPath()  %>/m/discovery/search.html?tag=特色">特色</a></span>
						<span class="J_search_tag">&nbsp;</span>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<section class="footer"></section>
	
	<script src="${staticServerPath1 }/scripts/zepto.js" type="text/javascript"></script>
	<script src="${staticServerPath1 }/scripts/web/swip.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		function search(tag){
			var url = '<%=request.getContextPath()  %>/m/discovery/search.html?tag=' + tag + '&i=0';
			window.location.href = encodeURI(url);
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
				
				//是否显示删除按钮
				if($(this).val() != ''){
					$('.J_btn_delete').addClass('btn--show');
				}else{
					$('.J_btn_delete').removeClass('btn--show');
				}
			});
			
			$('.J_btn_delete').tap(function(){
				$(this).parent().find('input[type=text]').val('');
				
				//隐藏删除按钮
				$('.J_btn_delete').removeClass('btn--show');
			});
		});
	</script>
	
</body>
</html>
