<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<script type="text/javascript">
function gotoPage(pageIndex){
	$.query.exec(pageIndex);
}
</script>

<c:forEach items="${list }" var="route" varStatus="x">
	<c:if test="${route.type == 'SPOT' }">
	<div class="route route--theme1 ${x.count == 1 ? '' : 'mtl' }">
	    <div class="route_img">
	        <div class="route-img">
	            <div class="route-img_3img--left">
	                <img src="<%=request.getContextPath()  %>/images/query/t1.png" alt="">
	            </div>
	            <div class="route-img_3img--right">
	                <div class="img"><img src="<%=request.getContextPath()  %>/images/query/t2.png" alt=""></div>
	                <div class="img"><img src="<%=request.getContextPath()  %>/images/query/t3.png" alt=""></div>
	            </div>
	        </div>
	    </div>
	    <div class="route_desc">
	        <div class="route-desc_header--theme1">
	            <h3><a href="<%=request.getContextPath()  %>/web/v1/activity/detail.html?routeId=${route.activityPlanId }">${route.name }</a></h3>
	            <p>${route.description }</p>
	        </div>
	        <div class="route-desc_content--theme1">
	            <ul class="tag-line tag-line--default">
	                <li>建议游玩：</li>
	                <li><span class="tag tag--out">${route.takeTime }</span></li>
	            </ul>
	            <c:out value="${route.otherAttr }" escapeXml="false"/>
	            <ul class="tag-line tag-line--default">
	                <li>主题特色：</li>
	                <li>
	                    <c:out value="${route.topic }" escapeXml="false"/>
	                </li>
	            </ul>
	        </div>
	    </div>
	</div>
	</c:if>
	
	<c:if test="${route.type == 'HOT' }">
	<div class="route route--theme1 ${x.count == 1 ? '' : 'mtl' }">
	    <div class="route_img">
	        <div class="route-img">
	            <div class="route-img_1img">
                     <img src="<%=request.getContextPath()  %>/images/query/route-01.png" alt="">
                 </div>
	        </div>
	    </div>
	    <div class="route_desc">
	        <div class="route-desc_header--theme1">
	            <h3><a href="<%=request.getContextPath()  %>/web/v1/activity/${route.activityPlanId }/detail.html">${route.name }</a></h3>
	            <p>${route.description }</p>
	        </div>
	        <div class="route-desc_content--theme1">
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
	    </div>
	</div>
	</c:if>
</c:forEach>

<c:if test="${search.totalPage > 0 }">
<div class="pagebar">
    <tags:pager
		pagerRange="6" 
	   	pageSize="10" 
	   	totalPage="${search.totalPage }" 
	   	curIndex="${search.page}"/>
</div>
</c:if>