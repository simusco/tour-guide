<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>
<!-- 
	src="${staticServerPath1 }/images/${discovery.imageURL}"
 -->
 
<script type="text/javascript">
<!--
function gotoPage(page){
	load('${discoveryType}', page);
}
//-->
</script>

<ul class="discover-list" >
	<c:forEach items="${discoveryList }" var="discovery">
		<li class="head_pic wd-list">
			<a href="${discovery.url }">
				<img class="lazy"
				src="${discovery.imageURL}"
				width="100%" alt="${discovery.name }">
				<p class="head_pic_title">
					<span>【${discovery.name }】</span>&nbsp;<span>${fn:substring(discovery.description, 0, 24) }${fn:length(discovery.description) > 24 ? "..." : ""}</span>
				</p>
				<!-- 
				<p class="tags">
					<c:forTokens items="${discovery.tags }" delims=" " var="tag">
						<span>${tag }</span>
					</c:forTokens>
				</p>
				 -->
			</a>
		</li>
	</c:forEach>
</ul>

<c:if test="${pagination.totalPage > 0 }">
<div class="pagebar">
    <tags:pagea
		pagerRange="6" 
	   	pageSize="10" 
	   	totalPage="${pagination.totalPage }" 
	   	curIndex="${pagination.currPage}"/>
</div>
</c:if>

