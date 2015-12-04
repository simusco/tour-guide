<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>
	
<div class="content mtl">
       <div class="topic-detail__title">
           <div class="article-title">
               <div class="article-title__title">${topic.name }</div>
               <div class="article-title__subtitle">by <fmt:formatDate value="${topic.createTime }" pattern="yyyy-MM-dd"/> (${topic.readCount })</div>
           </div>
       </div>
       
       <div class="topic-detail__content">
       		<c:forEach items="${activityList }" var="activity" varStatus="x">
       			<c:out value="${activity.topicDesc }" escapeXml="false"/>
       			
				<div class="topic-content__toolbar">
				    <span class="tag--out font-5x">${activity.priceDesc }</span>
				    <a href="<%=request.getContextPath()  %>/web/v1/activity/detail.html?routeId=${activity.activityPlanId}" class="btn-query">点击查询</a>
				</div>
				
				<c:if test="${not x.last }">
				<hr class="topic-content_splite">
				</c:if>
           </c:forEach>
    </div>
</div>