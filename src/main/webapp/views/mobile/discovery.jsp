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
	width: 10px;
	height: 10px;
	border-radius: 10px;
	background: #999999;
	margin: 0 2px;
	cursor: pointer
}

#position li.on {
	background-color: #cd5c5c;
}

/*nav css*/
.nav {
	height: 43px;
	background-color: #ff9d00;
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
	font-size: 1.6rem;
	color: #fff;
	position: relative;
}

.nav ul li a:before {
	content: "";
	display: block;
	width: 1px;
	height: 28px;
	background-color: #ffce80;
	transform: scale(.5);
	-webkit-transform: scale(.5);
	position: absolute;
	right: 0;
	top: 7px;
}

/*header bem.*/
.header {
	background-color: #fff;
	border-bottom: 1px solid #e5e5e5;
	height: 50px;
	position: relative;
}

.header__logo {
	position: absolute;
	left: 0;
	top: 0;
	z-index: 2;
}

.header__search {
	text-align: center;
	position: relative;
}

.header__blank {
	position: absolute;
	right: 0;
	top: 0;
	text-align: right;
}

.header__blank > .category{
	height: 50px;
	line-height:50px;
	display: inline-block;
	padding: 0px 10px 0;
	color:#333;
}

.search {
	padding: 12px 50px 0 104px;
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

.logo {
	width: 94px;
	height: 50px;
	display: inline-block;
	background: url(../../images/m/logo.png) no-repeat;
	background-position: 10px 15px;
	padding: 0px 10px 0;
	background-size: 81px 21px;
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
	line-height: 40px;
	color: #fff;
}

.head_pic .head_pic_title {
	position: absolute;
	left: 0;
	bottom: 0;
	padding: 10px 0 5px 5px;
	width: 100%;
	border: 0;
	text-shadow: 1px 0px 2px #333;
	background: linear-gradient(bottom, rgba(0, 0, 0, 0.55),
		rgba(0, 0, 0, 0));
	background: -webkit-linear-gradient(bottom, rgba(0, 0, 0, 0.55),
		rgba(0, 0, 0, 0));
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
	font-size: 18px;
}

.head_pic .head_pic_title span {
	display: block;
	line-height: 20px;
	font-size: 12px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.discover-list {
	padding: 10px;
}

.discover-list li {
	position: relative;
	margin-bottom: 10px;
	overflow: hidden;
	border-radius: 5px;
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
}

.loadmore a, .loadmore span {
	display: inline-block;
	width: 55px;
}

.loadmore span {
	color: #ccc;
}
</style>
</head>
<body>
	<header class="header">
		<div class="header__logo">
			<a href="/m/discovery.html" class="logo"></a>
		</div>
		<div class="header__search">
			<div class="search J_btn_query">
				<form class="search__wrap" action="<%=request.getContextPath()  %>/m/discovery/tag.html">
					<input type="text" placeholder="输入关键字" disabled="disabled">
					<button type="search" class="btn btn--search"></button>
				</form>
			</div>
		</div>
		<div class="header__blank">
		</div>
	</header>

	<div class="focus">
		<div id="slider" class="swipe">
			<div class="swipe-wrap">
				<c:forEach items="${advImageList }" var="advImage">
					<figure>
						<a href="${advImage.url }"><img
							src="${advImage.imageURL}" /></a>
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

	<section class="content" id="discovery-list">
	</section>
	
	<script src="../../scripts/zepto.js" type="text/javascript"></script>
	<script src="../../scripts/web/swip.js" type="text/javascript"></script>
	
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
					$('.J_nav_item').css('color','#fff');
					$(this).css('color','#333');
				});
			});
			
			//默认加载吃的
			$('a[type=EAT]').trigger('tap');
		});
	</script>
	
</body>
</html>