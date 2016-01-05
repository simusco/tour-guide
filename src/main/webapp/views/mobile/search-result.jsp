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
	<title>发现</title>
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	
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
			border:1px solid #999;
			background-color: #fff;
		}
		
		.table__header{
			height:30px;
			line-height:30px;
			font-size:16px;
			border-bottom: 1px solid #ededed;
		}
		
		.table__body{
			margin: 10px;
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
		
		/*搜索结果*/
		
		.list-view__auction{
			padding: 8px 5px 6px 8px;
			position: relative;
			border-bottom: 1px solid rgb(212,212,212);
			background-color: #fff;
		}
		
		.list-view__auction.bt1{
			border-top: 1px solid rgb(212,212,212);
		}
		
		.auction{
			display:block;
			clear: both;
		    position: relative;
		}
		
		.auction__image{
			display:block;
			width: 106px;
			height: 68px;
			border-radius: 3px;
			overflow: hidden;
			
			position: absolute;
			left:0px;
			top: 3px;
		}
		
		.auction__image > img{
			width:100%;
			height:100%;
		}
		
		.auction__describe{
			margin-left: 114px;
			height: 76px;
		}
		
		.auction__empty{
			width: 100%;
			text-align: center;
			display: inline-block;
			line-height: 40px;
		}
		
		.auction-describe__title{
			font-size: 16px;
			display:block;
			color: #1a1a1a;
			
			overflow: hidden;
		    white-space: nowrap;
		    text-overflow: ellipsis;
		}
		
		.auction-describe__subtitle{
			font-size: 12px;
			display:block;
			color:#999;
			margin-top:0px;
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
				<form class="search__wrap">
					<input type="text" placeholder="输入查询关键字" value="${tag }" class="J_search_input">
					<button class="btn btn--search J_btn_query" type="button"></button>
				</form>
			</div>
		</div>
		<div class="title mtl">搜索结果</div>
	</section>
	
	<div class="list-view mtl">
		<c:if test="${empty discoveryList }">
			<div class="list-view__auction bt1">
				<div class="auction">
					<div class="auction__empty">暂时无收录数据</div>
				</div>
			</div>
		</c:if>
	
		<c:forEach items="${discoveryList }" var="discovery" varStatus="x">
		<div class="list-view__auction ${x.count == 1 ? "bt1" : "" }">
			<a class="auction" href="${discovery.url }">
				<div class="auction__image">
					<img src="${discovery.imageURL }" style="width: 100%; opacity: 1;"> 
				</div>
				<div class="auction__describe">
					<div class="auction-describe">
						<span class="auction-describe__title">${discovery.name }</span> 
						<span class="auction-describe__subtitle">${discovery.description }</span>
					</div>
				</div>
			</a>
		</div>
		</c:forEach>
	</div>
	
	<section class="footer mtl"></section>
	
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