<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<div class="content mtl">
        <div class="content__leftslider profile-grid__span-3">
            <div class="slide-menu last head">
                <div class="slide-menu__headicon">
                    <div class="headicon">
                        <img src="images/profile/headicon.png">
                        <p>${loginUser.name }</p>
                    </div>
                </div>
            </div>
            <div class="slide-menu mtm">
                <span class="slide-menu__title">我的订单</span>
                <div class="slide-menu__submenu">
                    <ul class="menu">
                        <li><a href="<%=request.getContextPath()  %>/web/v1/my/unpay.html" class="menu__item">未支付</a></li>
                        <li><a href="<%=request.getContextPath()  %>/web/v1/my/payed.html" class="menu__item active">已支付</a></li>
                    </ul>
                </div>
            </div>

            <div class="slide-menu">
                <span class="slide-menu__title">我的收藏</span>
                <div class="slide-menu__submenu">
                    <ul class="menu">
                        <li>
                            <a href="" class="menu__item">收藏
                                <span class="menu-item__arrow">></span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="slide-menu last">
                <span class="slide-menu__title">我的资料</span>
                <div class="slide-menu__submenu">
                    <ul class="menu">
                        <li>
                            <a href="" class="menu__item">修改资料<span class="menu-item__arrow">></span></a>
                        </li>
                        <li>
                             <a href="<%=request.getContextPath()  %>/web/v1/my/reset-psword.html" class="menu__item">修改密码<span class="menu-item__arrow">></span></a>
                        </li>
                        <c:if test="${not empty loginUser }">
                        	<li>
	                            <a href="<%=request.getContextPath()  %>/web/v1/user/signout.html" class="menu__item">退出登陆<span class="menu-item__arrow">></span></a>
	                        </li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </div>
        <div class="content__rightbody profile-grid__span-13--last">
            <div class="rightbody">
                <div class="rightbody__bread-crumb">
                    <ol class="bread-crumb">
                        <li><a href="">个人中心 ></a></li>
                        <li><a href="">未付款</a></li>
                    </ol>
                </div>
                <span class="rightbody__title">&nbsp;未付款</span>
                <div class="rightbody__grid">
                	<c:forEach items="${orderList }" var="order">
            		<div class="order">
            			<div class="order__title">
            				<div class="order-title container-12">
            					<div class="order-title__column--left span-4">&nbsp;订单号:${order.orderNo }</div>
            					<div class="order-title__column span-2"><fmt:formatDate value="${order.createTime }" pattern="yyyy-MM-dd"/></div>
            					<div class="order-title__column span-2">金额</div>
            					<div class="order-title__column span-2">状态</div>
            					<div class="order-title__column span-2-last">操作</div>
            				</div>
            			</div>
                        <div class="order__body container-12">
                        	<div class="order-body">
                        		<div class="order-body__column--image span-2">
		                            <div class="order-image">
		                                <div class="order-image__img"><img src="${staticServerPath1 }/images/${order.ticketIcon}"></div>
		                            </div>
		                        </div>
		                        <div class="order-body__column--name span-4">
		                            <div class="order-name">
		                                <span href="" class="order-name__title">${order.ticketName}</span>
		                                <span href="" class="order-name__subtitle">${order.ticketDesc }</span>
		                                <span href="" class="order-name__subtitle">使用时间：${order.entryTime }至${order.endTime }</span>
		                            </div>
		                        </div>
		                        <div class="order-body__column--price span-2"><span>￥${order.totalPrice }元</span></div>
		                        <div class="order-body__column--state span-2"><span>
		                        	<c:if test="${order.status == 'UNPAY' }">未支付</c:if>
		                        	<c:if test="${order.status == 'PAYED' }">已支付</c:if>
		                        	<c:if test="${order.status == 'CANCEL' }">订单取消</c:if>
		                        </span></div>
		                        <div class="order-body__column--btn span-2-last">
		                            <div class="row-btn">
		                            	<a class="btn-book">立即支付</a>
			                            <a class="btn-book">取消订单</a>
			                            <a class="btn-book">订单详情</a>
		                            </div>
		                        </div>
                        	</div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
	</div>