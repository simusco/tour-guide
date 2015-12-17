<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript">
$(function(){
	
	$(window).scroll( function() {
		var scrollTop = $(this).scrollTop(),
			menu = $('#slide-menu');
		
		if(scrollTop <= 200){
			menu.removeClass('fixed');
		}else{
			menu.addClass('fixed')
		}
 	});
	
});
</script>


<div class="content mtl">

	<div class="content__bread-crumb">
		<ol class="bread-crumb">
    		<li><a href="<%=request.getContextPath()  %>/web/v1/activity/query.html">套餐&gt;&gt;</a></li>
            <li><a href="<%=request.getContextPath()  %>/web/v1/activity/detail.html?routeId=${route.activityPlanId }">${route.name }&gt;&gt;</a></li>
    		<li><a href="<%=request.getContextPath()  %>/web/v1/activity/goodness.html?routeId=${route.activityPlanId }">亮点</a></li>
    	</ol>
	</div>

   	<div class="content__info">
   		<div class="content__info--left">
   			<div class="slide-menu" id="slide-menu">
   				<span class="slide-menu__title">景点</span>
	    		<div class="slide-menu__submenu">
	    			<ul class="menu">
	    				<c:forEach items="${goodnessList }" var="goodness">
	    					<c:if test="${goodness.type == 'SPOT' }">
				    			<li><a href="#${goodness.anchor }" class="menu__item"><span class="arrow-icon">></span>${goodness.name }</a></li>
	    					</c:if>
	    				</c:forEach>
		    		</ul>
	    		</div>
   			
   				<span class="slide-menu__title">吃点</span>
	    		<div class="slide-menu__submenu">
	    			<ul class="menu">
	    				<c:forEach items="${goodnessList }" var="goodness">
	    					<c:if test="${goodness.type == 'EAT' }">
				    			<li><a href="#${goodness.anchor }" class="menu__item"><span class="arrow-icon">></span>${goodness.name }</a></li>
	    					</c:if>
	    				</c:forEach>
		    		</ul>
	    		</div>
   			
	    		<span class="slide-menu__title">玩点</span>
	    		<div class="slide-menu__submenu">
	    			<ul class="menu">
	    				<c:forEach items="${goodnessList }" var="goodness">
	    					<c:if test="${goodness.type == 'PLAY' }">
				    			<li><a href="#${goodness.anchor }" class="menu__item"><span class="arrow-icon">></span>${goodness.name }</a></li>
	    					</c:if>
	    				</c:forEach>
		    		</ul>
	    		</div>
	    	</div>
   		</div>
   		<div class="content__info--right">
   			<div class="spot">
   				<div class="spot__title spot__title--spot">景点</div>
   				<div class="spot__content">
   					<c:set value="1" var="index"></c:set>
   					<c:forEach items="${goodnessList }" var="goodness" varStatus="x">
   						<c:if test="${goodness.type == 'SPOT' }">
   						<span class="topic-content__title" id="${goodness.anchor }">${index}.${goodness.name }</span>
   						<c:out value="${goodness.content }" escapeXml="false"/>
   						<c:set value="${index + 1 }" var="index"></c:set>
   						</c:if>
   					</c:forEach>
   				</div>
   			</div>
   			<div class="spot mtl">
   				<div class="spot__title spot__title--eat">吃点</div>
   				<div class="spot__content">
   					<c:set value="1" var="index"></c:set>
   					<c:forEach items="${goodnessList }" var="goodness" varStatus="x">
   						<c:if test="${goodness.type == 'EAT' }">
   						<span class="topic-content__title" id="${goodness.anchor }">${index}.${goodness.name }</span>
   						<c:out value="${goodness.content }" escapeXml="false"/>
   						<c:set value="${index + 1 }" var="index"></c:set>
   						</c:if>
   					</c:forEach>
   				</div>
   			</div>
   			
   			<div class="spot mtl">
   				<div class="spot__title spot__title--play">玩点</div>
   				<div class="spot__content">
   					<c:set value="1" var="index"></c:set>
   					<c:forEach items="${goodnessList }" var="goodness" varStatus="x">
   						<c:if test="${goodness.type == 'PLAY' }">
   						<span class="topic-content__title" id="${goodness.anchor }">${index}.${goodness.name }</span>
   						<c:out value="${goodness.content }" escapeXml="false"/>
   						<c:set value="${index + 1 }" var="index"></c:set>
   						</c:if>
   					</c:forEach>
   				</div>
   			</div>
   		</div>
   	</div>
   	
</div>