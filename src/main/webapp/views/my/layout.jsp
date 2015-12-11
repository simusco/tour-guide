<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!doctype html>
<html>
	<head>
		<tiles:insertAttribute name="header"/>
		<script type="text/javascript">
			$(function(){
				var active = '<tiles:getAsString name="active"/>';
				$('*[menu-item='+active+']').addClass('active');
			});
		</script>
	</head>
	
	<body>
		<tiles:insertAttribute name="topbar"/>
		<tiles:insertAttribute name="navbar"/>
		
		<div class="content mtl">
			<div class="content__leftslider profile-grid__span-3">
	            <div class="slide-menu">
	                <div class="slide-menu__headicon">
	                    <div class="headicon">
	                        <img src="${staticServerPath1 }/images/profile/headicon.png"/>
	                        <p>${loginUser.name }</p>
	                    </div>
	                </div>
	            </div>
	            <div class="slide-menu mtm">
	                <span class="slide-menu__title">我的订单</span>
					<a href="<%=request.getContextPath()  %>/web/v1/my/order/unpay.html" class="slide-menu__item" menu-item="unpay">未付款</a>
					<a href="<%=request.getContextPath()  %>/web/v1/my/order/payed.html" class="slide-menu__item" menu-item="payed">已付款</a>
					<a href="<%=request.getContextPath()  %>/web/v1/my/order/close.html" class="slide-menu__item" menu-item="close">已完成</a>
	            </div>
	            <div class="slide-menu">
	                <span class="slide-menu__title">我的收藏</span>
					<a href="<%=request.getContextPath()  %>/web/v1/my/favorite.html" class="slide-menu__item"  menu-item="favorite">收藏</a>
	            </div>
	            <div class="slide-menu">
	                <span class="slide-menu__title">我的资料</span>
					<a href="<%=request.getContextPath()  %>/web/v1/user/modify-profile.html" class="slide-menu__item" menu-item="modify-profile">修改资料</a>
					<a href="<%=request.getContextPath()  %>/web/v1/user/reset-psword.html" class="slide-menu__item" menu-item="reset-psword">修改密码</a>
					<a href="<%=request.getContextPath()  %>/web/v1/user/signout.html" class="slide-menu__item">退出登录</a>
	            </div>
	        </div>
	        <tiles:insertAttribute name="content"/>
		</div>
		
		<tiles:insertAttribute name="footer"/>
		<tiles:insertAttribute name="analytics"/>
	</body>
</html>
