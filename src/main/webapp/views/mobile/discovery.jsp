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
	
		.search{
			background-color:#fff;
			position:relative;
		}
	
		.search__logo{
			background:url(${staticServerPath1 }/images/mobile/logo.png) no-repeat 15px center;
			background-size:30px 36px;
			height:50px;
			width:18%;
			float:left;
		}
	
		.search__input{
			box-sizing: border-box;
			width:82%;
			height:50px;
			float:right;
			position: relative;
			padding:10px 15px 10px 0px;
		}
	
		.search__input input[type=text]{
			height:30px;
			width:100%;
			background-color:#e8e8e8;
			border-radius:15px;
			border: 0;
			outline: 0;
			font-size: 14px;
			text-indent: 12px;
		}
		
		.search__input input[type=text]:disabled{
			background-color:#e8e8e8;
		}
		
		.btn {
			border: 0;
		}
		
		.btn--search {
			width: 34px;
			height: 30px;
			background: url(${staticServerPath1 }/images/mobile/btn_search2.png) no-repeat 7px 4px;
			background-size: 20px 20px;
			position: absolute;
			right: 18px;
			top: 12px;
		}
	
		/*swip*/
		.focus {
			position: relative;
		}
	
		.swipe {
			overflow: hidden;
			visibility: hidden;
			position: relative;
		}
	
		.swipe-wrap {
			overflow: hidden;
			position: relative;
		}
	
		.swipe-wrap>figure {
			float: left;
			width: 100%;
			position: relative;
			height: 18rem;
		}
	
		.swipe-wrap figure img {
			width: 100%;
			height: 100%;
		}
	
		.swipe-wrap figure img a {
			display: block;
		}
	
		#position {
			text-align: center;
			list-style: none;
			margin: 0;
			padding: 0;
			position: absolute;
			bottom: 1rem;
			left: 0;
			width: 100%;
		}
	
		#position li {
			display: inline-block;
			width: 8px;
			height: 8px;
			border-radius: 8px;
			background: #fff;
			margin: 0 2px;
			cursor: pointer
		}
	
		#position li.on {
			background-color: #26dab5;
		}
	
		/*nav css*/
		.nav {
			height: 43px;
			background-color: #26dab5;
		}
	
		.nav ul {
			width: 100%;
			display: table;
		}
	
		.nav ul li {
			display: table-cell;
			width: 25%;
		}
	
		.nav ul li a {
			display: block;
			text-align: center;
			line-height: 43px;
			font-size: 15px;
			color: #04a786;
			position: relative;
		}
	
		.nav ul li a:before {
			content: "";
			display: block;
			width: 1px;
			height: 28px;
			background-color: #7fefd9;
			transform: scale(.5);
			-webkit-transform: scale(.5);
			position: absolute;
			right: 0;
			top: 7px;
		}
	
		/*discovey list*/
		.head_pic {
			position: relative;
			overflow: hidden;
		}
	
		.head_pic a {
			display: block;
		}
	
		.head_pic p {
			padding-right: 5px;
			line-height: 20px;
			color: #fff;
		}
	
		.head_pic .head_pic_title {
			position: absolute;
			left: 0;
			bottom: 0;
			padding: 10px 5px 5px 5px;
			width: 100%;
			border: 0;
			text-shadow: 1px 0px 2px #333;
			background: rgba(0, 0, 0, 0.5);
		}
	
		.head_pic .tags {
			position: absolute;
			right: 0;
			top: 0px;
			line-height: 40px;
		}
	
		.head_pic .tags span {
			padding: 2px 5px;
			background: rgba(0, 0, 0, .5);
			border-radius: 3px;
			margin-left: 5px;
			font-size: 14px;
		}
	
		.head_pic .head_pic_title span:first-child {
			font-size: 15px;
		}
	
		.head_pic .head_pic_title span {
			font-size: 14px;
		}
	
		.discover-list {
			padding: 10px;
		}
	
		.discover-list li {
			position: relative;
			margin-bottom: 10px;
			overflow: hidden;
			border-radius: 3px;
		}
	
		.discover-list li img {
			width: 100%;
		}
	
		/*load more*/
		.loadmore {
			line-height: 40px;
			text-align: center;
			background: #fff;
			margin: 0 10px;
			border-bottom: 10px solid #f1f1f1;
			font-size:14px
		}
	
		.loadmore a, .loadmore span {
			display: inline-block;
			width: 55px;
		}
	
		.loadmore span {color: #ccc;}
	</style>

</head>
<body>
	<div class="search clearfix">
		<div class="search__logo"></div>
		<div class="search__input J_search_input">
			<input type="text" placeholder="搜索发现更多惊喜" value="" disabled="disabled">
			<button class="btn btn--search" type="button"></button>
		</div>
	</div>

	<div class="focus">
		<div id="slider" class="swipe">
			<div class="swipe-wrap">
				<c:forEach items="${advImageList }" var="advImage">
					<figure>
						<a href="${advImage.url }"><img
							src="${staticServerPath1 }/images/${advImage.imageURL}" /></a>
					</figure>
				</c:forEach>
			</div>
			<ul id="position">
				<c:forEach items="${advImageList }" var="advImage" varStatus="x">
					<c:if test="${x.count == 1 }">
						<li class="on"></li>
					</c:if>
					<c:if test="${x.count != 1 }">
						<li></li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
	</div>

	<nav class="nav" style="position: fixed;top:0;width:100%;position:-webkit-sticky;position:sticky;z-index:7;">
		<ul>
			<li><a href="javascript:;" class="J_nav_item" type="EAT">吃</a></li>
			<li><a href="javascript:;" class="J_nav_item" type="DRINK">喝</a></li>
			<li><a href="javascript:;" class="J_nav_item" type="PLAY">玩</a></li>
			<li><a href="javascript:;" class="J_nav_item" type="HOTEL">住</a></li>
		</ul>
	</nav>

	<section class="content" id="discovery-list"></section>
	
	<script src="${staticServerPath1 }/scripts/zepto.js" type="text/javascript"></script>
	<script src="${staticServerPath1 }/scripts/web/swip.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		function load(type, page){
			$.ajax({
				url : '<%=request.getContextPath()  %>/m/discovery/list.html?discoveryType='+ type + '&currPage=' + page,
				method : 'GET',
	    		success : function(resp) {
	    			var dl = $('#discovery-list');
	    			dl.empty();
	    			dl.append(resp);
	    		},
	    		error : function(resp) {
					alert('网络出现问题，刷新页面重新尝试！');
	    		}
	    	});
		}
		
		$(function(){
			$('.J_nav_item').each(function(){
				$(this).tap(function(){
					var type = $(this).attr('type');
					
					//加载数据
					load(type, 1);
					
					//改变样式
					$('.J_nav_item').css('color','#04a786');
					$(this).css('color','#fff');
				});
			});
			
			//默认加载吃的
			$('a[type=EAT]').trigger('tap');
			
			$('.J_search_input').tap(function(){
				window.location.href='<%=request.getContextPath()  %>/m/discovery/tag.html';
			});
		});
	</script>
	
</body>
</html>