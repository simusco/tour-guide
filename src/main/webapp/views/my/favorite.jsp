<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<link rel="stylesheet"
	href="${staticServerPath1 }/styles/pages/favorite.css">

<div class="content__rightbody profile-grid__span-13--last">
	<div class="rightbody">
		<div class="rightbody__bread-crumb">
			<ol class="bread-crumb">
				<li><a href="">个人中心 ></a></li>
				<li><a href="">我的收藏</a></li>
			</ol>
		</div>
		<span class="rightbody__title">&nbsp;我的收藏</span>
		<div class="rightbody__grid">
			<c:forEach items="${favorites }" var="favorite" varStatus="x">
				<c:if test="${x.count == 1 || x.count % 4 == 0 }">
					<div class="profile-grid mtl">
				</c:if>
				<div
					class="favorite profile-grid__span-1${x.count % 3 == 0 ? '--last' : '' }">
					<div class="favorite__img">
						<div class="thumbnail">
							<img class="thumbnail__img"
								src="${staticServerPath1 }/images/${favorite.imageURL }" alt="">
							<p class="thumbnail__name">
								<span>${favorite.name }</span>
							</p>
						</div>
					</div>
					<div class="favorite__toobar">
						<span class="tag--price">¥${favorite.price }元</span>
						<small><del class="del">门市价${favorite.marketPrice }元</del></small>
						<a href="<%=request.getContextPath()  %>/web/v1/activity/detail.html?type=HOT&routeId=${favorite.activityId}" class="btn-detail">
							查看详情>>
						</a>
					</div>
				</div>
			<c:if test="${x.count % 3 == 0 }">
			</div>
			</c:if>
		</c:forEach>
	</div>
</div>
</div>
</div>
