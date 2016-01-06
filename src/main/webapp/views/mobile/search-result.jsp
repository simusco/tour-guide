<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
	<title>搜索结果</title>

	<meta http-equiv="Content-Type" content="application/vnd.wap.xhtml+xml;charset=utf-8" />
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no,minimal-ui">
	<meta name="apple-mobile-web-app-capable" content="no">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="description" content="" />
	<meta name="keywords" content="" />

	<link rel="stylesheet" type="text/css" href="../../styles/base.css">

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
			margin:0px;
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
			background: url(../../images/mobile/btn_search2.png) 8px 4px no-repeat;
			background-size: 17px 17px;
			position: absolute;
			right: 40px;
			top: 5px;
		}


		/**
		 * 搜索结果样式
		 */
		
		.view-list{
			background-color:#fff;
		}

		.view{
			position:relative;
			border-bottom:1px solid #ddd;
			display: block;
			text-decoration: none;
		}

		.view:last-child{
			border-bottom:none;
		}

		.view__img{
			position:absolute;
			left:8px;
			top:10px;
		}

		.view__img img{
			width:96px;
			height:72px;
			border-radius:3px;
		}

		.view__desc{
			box-sizing: border-box;
			margin-left:112px;
			height:92px;
			padding:10px 0px;
			padding-right: 8px;
		}

		.view__desc .title{
			font-size:15px;
			color:#333;
			line-height:26px;
		}

		.view__desc .subtitle{
			font-size:12px;
			color:#999;
		}

		.view-more{
			background-color:#fff;
		}

		.view-more a{
			text-decoration:none;
			font-size:12px;
			display:inline-block;
			width:100%;
			text-align:center;
			color:#999;
			line-height:40px;
		}
		
		.no-result{
			background-color:#fff;
			padding:30px 0px;
		}

		.no-result__img{
			text-align:center;
		}

		.no-result__desc{
			text-align:center;
			font-size:16px;
			line-height:20px;
		}
	</style>

</head>
<body>

	<header class="header">
		<div class="header__adv">
			<img src="../../images/mobile/adv.jpg">
		</div>
	</header>

	<section class="search">
		<div class="search__wraper">
			<form class="search__input" action="#">
				<input type="text" placeholder="输入查询关键字" value="${tag }" class="J_search_input">
				<button class="btn btn--search J_btn_query" type="button"></button>
			</form>
		</div>
		<div class="search__caption"><span>搜索结果</span></div>
	</section>

	<section class="content">
		<c:if test="${empty discoveryList }">
			<div class="no-result">
				<div class="no-result__img"><img src="../../images/mobile/noresult.png"/></div>
				<div class="no-result__desc"><span>暂无收录结果</span></div>
			</div>
		</c:if>
	
		<div class="view-list">
			<c:forEach items="${discoveryList }" var="discovery" varStatus="x">
			<a class="view" href="${discovery.url }">
				<div class="view__img">
					<img src="${discovery.imageURL }"> 
				</div>
				<div class="view__desc">
					<div class="title">${fn:substring(discovery.name, 0, 9) }${fn:length(discovery.name) > 9 ? "..." : ""}</div>
					<div class="subtitle">${fn:substring(discovery.description, 0, 28) }${fn:length(discovery.description) > 28 ? "..." : ""}</div>
				</div>
			</a>
			</c:forEach>
		</div>
		
		<c:if test="${not empty discoveryList }">
			<div class="view-more"><a href="">显示更多</a></div>
		</c:if>
	</section>
	
	<script src="../../scripts/zepto.js" type="text/javascript"></script>
	<script src="../../scripts/web/swip.js" type="text/javascript"></script>
	
	<script type="text/javascript">
	$(function(){
		$('.J_btn_query').tap(function(){
			var text = $(this).parent().find('input[type=text]').val();
			if(text != ''){
				window.location.href = '<%=request.getContextPath()  %>/m/discovery/search.html?tag=' + text;
			}else{
				window.location.href = '<%=request.getContextPath()  %>/m/discovery/tag.html';
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
