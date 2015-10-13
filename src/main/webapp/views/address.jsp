<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:forEach items="${tags }" var="tagMap" varStatus="vs">
	<c:if test="${not empty tagMap.value }">
	<li class="tag-item-title"> 景区：</li>
	<li 
		tag-id="100" 
		tag-pid="10" 
		tag-type="ADDRESS" 
		tag-value="ALL" 
		tag="全部" 
		ui-tag-address="true">
		<a href="javascript:$.doNothing();">全部</a>
	</li>
	
	<c:forEach items="${tagMap.value}" var="t">
	   <li
			tag-id="${t.tagId }"
			tag-pid="${t.parentId }"
			tag-type="${t.type }"
			tag-value="${t.value }"
			tag="${t.tag }"
			ui-tag-address="true">
			<a href="javascript:$.doNothing();">${t.tag }</a>
		</li>
	</c:forEach>
	</c:if>
</c:forEach>