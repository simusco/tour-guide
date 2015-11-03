<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript">

</script>

<div class="content mtl">

	<div class="content__overview">
		<div class="overview__header">
            <ol class="bread-crumb">
                <li><a href="<%=request.getContextPath()  %>/web/v1/activity/query.html">套餐&gt;&gt;</a></li>
                <li><a href="<%=request.getContextPath()  %>/web/v1/activity/detail.html?routeId=${route.activityPlanId }">${route.name }</a></li>
            </ol>
        </div>
        <div class="overview__body">
            <div class="route route--theme2 mtl">
                <div class="route_img">
                    <div class="route-img">
                        <div class="route-img__screen">
                            <div class="img-screen"><img src="<%=request.getContextPath()  %>/images/detail/hotel-01.png"></div>
                        </div>
                        <div class="route-img__control">
                            <div class="img-control">
                                <a class="img-control__btn--left"></a>
                                <div class="img-control__review">
                                	<c:forEach items="${route.imageList }" var="image" varStatus="x">
	                                	<c:if test="${image.type == 'DETAIL-HEADER' }">
		                                    <div class="image-review">
		                                        <img src="<%=request.getContextPath()  %>/static/images/${image.path}">
		                                    </div>
	                                    </c:if>
                                    </c:forEach>
                                </div>
                                <a class="img-control__btn--right"></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="route_desc">
                    <div class="route-desc_header--theme2">
                        <h2>${route.name }</h2>
                        <p>${route.description }</p>
                    </div>
                    <c:if test="${route.type == 'HOT' }">
                    	<div class="route-desc_content--theme2">
	                        <ul class="tag-line tag-line--default">
	                            <li>建议游玩：</li>
	                            <li><span class="tag--out">${route.takeTime }</span></li>
	                        </ul>
	                        <c:out value="${route.otherAttr }" escapeXml="false"/>
	                        <ul class="tag-line tag-line--default">
	                            <li>主题特色：</li>
	                            <li>
	                                <c:out value="${route.topic }" escapeXml="false"/>
	                            </li>
	                        </ul>
	                    </div>
                    </c:if>
                    
                    <c:if test="${route.type == 'SPOT' }">
                    	<div class="route-desc_content--theme2">
	                        <ul class="tag-line tag-line--default">
				                <li>价格：</li>
				                <li><span class="tag--out">$${route.price }元</span><small>起/份 <del>门市价:${route.marketPrice }</del></small></li>
				            </ul>
				            <ul class="tag-line tag-line--default">
				                <li>已售：</li>
				                <li><span class="tag--out">${route.hasSaled }</span></li>
				            </ul>
				            <ul class="tag-line tag-line--default">
				                <li>好评率：</li>
				                <li><span class="tag--out">${route.goodReviewPer }%</span></li>
				            </ul>
				            <ul class="tag-line tag-line--default">
				                <li>主题特色：</li>
				                <li>
				                    <c:out value="${route.topic }" escapeXml="false"/>
				                </li>
				            </ul>
				            <ul class="tag-line tag-line--default">
				                <li>费用包含：</li>
				                <li>
				                	<c:out value="${route.expInclusive }" escapeXml="false"/>
				                </li>
				            </ul>
	                    </div>
                    </c:if>
                </div>
            </div>
        </div>
	</div>
	
	<div class="content__spot">
	    <div class="panel">
	        <div class="panel__title">
	            <span class="panel__title--lcolor">亮点</span>
	        </div>
	        <div class="panel__content">
	            <ul class="tag-line tag-line--default">
	                <li>吃点：</li>
	                <li>
	                	<c:forEach items="${goodnessList }" var="goodness">
	                	<c:if test="${goodness.type == 'EAT' }">
	                    <span><a href="<%=request.getContextPath()  %>/web/v1/activity/goodness.html?routeId=${route.activityPlanId}#${goodness.anchor }" class="tag--default">${goodness.name }</a></span>
	                    </c:if>
	                    </c:forEach>
	                </li>
	            </ul>
	            <ul class="tag-line tag-line--default">
	                <li>玩点：</li>
	                <li>
	                    <c:forEach items="${goodnessList }" var="goodness">
	                	<c:if test="${goodness.type == 'PLAY' }">
	                    <span><a href="" class="tag--default">${goodness.name }</a></span>
	                    </c:if>
	                    </c:forEach>
	                </li>
	            </ul>
	            <ul class="tag-line tag-line--default">
	                <li>景点：</li>
	                <li>
	                    <c:forEach items="${goodnessList }" var="goodness">
	                	<c:if test="${goodness.type == 'SPOT' }">
	                    <span><a href="" class="tag--default">${goodness.name }</a></span>
	                    </c:if>
	                    </c:forEach>
	                </li>
	            </ul>
	        </div>
	    </div>
	</div>
	
	<div class="content__book">
	    <div class="panel">
	        <div class="panel__title">
	            <span class="panel__title--lcolor">预定</span>
	        </div>
	        <div class="panel__content">
	            <div class="book__datapicker">
	                <span class="book__datapicker--title">选择出行日期:</span>
	                <div class="open-calendar" data-time="2015-10-30">
	                    <i class="open-calendar__day">10-30</i>
	                    <i class="open-calendar__week">（周五）</i>
	                    <i class="open-calendar__unselected" style="display: none">未选择</i>
	                    <em class="open-calendar__em"></em>
	                </div>
	            </div>
	            <div class="book__table">
	            	<c:forEach items="${ticketList }" var="ticket">
	                <div class="book-ticket">
	                    <div class="span-2 book-ticket__image">
	                        <div class="ticket-image">
	                            <div class="ticket-image__img"><img src="<%=request.getContextPath()  %>/static/images/${ticket.icon }"></div>
	                        </div>
	                    </div>
	                    <div class="span-4 book-ticket__name">
	                        <div class="ticket-name">
	                            <span class="ticket-name__title">${ticket.name }</span>
	                            <a href="" class="ticket-name__subtitle--link">【点击查看详情】</a>
	                        </div>
	                    </div>
	                    <div class="span-2 book-ticket__price">
	                        <span class="tag--price">￥${ticket.price }</span>
	                    </div>
	                    <div class="span-2 book-ticket__marketprice">
	                        <del>门市价:100元</del>
	                    </div>
	                    <div class="span-2-last book-ticket__btn">
	                        <button class="btn-book">立即预定</button>
	                    </div>
	                </div>
	                </c:forEach>
	            </div>
	        </div>
	    </div>
	</div>
	
	<div class="subnavbar">
        <div class="subnav-wraper">
            <ul class="nav">
                <li class="nav_item--theme2 span-6"><a href="">购买须知</a></li>
                <li class="nav_item--theme2 span-6-last active"><a href="">推荐玩法</a></li>
            </ul>
        </div>
    </div>
    
    <div class="content mtl">
        <div class="content__buyknow">
            <div class="panel panel--theme1">
                <div class="panel__title panel__title--theme1">
                    <span class="panel__title--buyknow">购买须知</span>
                </div>
                <div class="panel__content">
                	<c:forEach items="${activityExtraList }" var="activityExtra">
                		<c:if test="${activityExtra.type == 'NEED_KNOW' }">
                		<c:out value="${activityExtra.content }" escapeXml="false"/>
                		</c:if>
                	</c:forEach>
                </div>
            </div>
        </div>
        <div class="content__recplan">
            <div class="panel panel--theme1">
                <div class="panel__title panel__title--theme1">
                    <span class="panel__title--recplan">推荐玩法</span>
                </div>
                <div class="panel__content">
                	<c:forEach items="${activityExtraList }" var="activityExtra">
                		<c:if test="${activityExtra.type == 'REC_PLAN' }">
                		<c:out value="${activityExtra.content }" escapeXml="false"/>
                		</c:if>
                	</c:forEach>
                </div>
            </div>
        </div>
    </div>

</div>