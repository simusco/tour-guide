<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<div class="content mtl">
   	<div class="content__adv">
   		<a href=""><img src="<%=request.getContextPath()  %>/images/topic/topic-adv.png" alt=""></a>
   	</div>
   	<div class="content__topic">
   		<c:forEach items="${topicList }" var="topic">
   	
   		<a title="" href="<%=request.getContextPath()  %>/web/v1/topic/detail.html?topicId=${topic.topicId}" class="topic">
   			<div class="topic__title">${topic.name }</div>
   			<div class="topic__content">
   				<div class="topic__content--left">
   					<img src="<%=request.getContextPath()  %>/static/images/${topic.imageUrl }" alt="">
   				</div>
   				<div class="topic__content--right">
   					<div class="topic-content__desc">
   						${topic.summary }
   					</div>
   					<div class="topic-content__toolbar">
   						<div class="toolbar">
   							<span class="tool"><fmt:formatDate value="${topic.createTime }" pattern="yyyy-MM-dd"/></span>
   							<span class="tool"><i class="icon-eye-open"></i> 阅读${topic.readCount }次</span>
   						</div>
   					</div>
   				</div>
   			</div>
   		</a>
   		
   		</c:forEach>
   	</div>
</div>