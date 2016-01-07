<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:forEach items="${discoveryList }" var="discovery" varStatus="x">
<a class="view" href="${discovery.url }">
	<div class="view__img">
		<img src="${staticServerPath1 }/images/${discovery.imageURL }"> 
	</div>
	<div class="view__desc">
		<div class="title">${fn:substring(discovery.name, 0, 9) }${fn:length(discovery.name) > 9 ? "..." : ""}</div>
		<div class="subtitle">${fn:substring(discovery.description, 0, 28) }${fn:length(discovery.description) > 28 ? "..." : ""}</div>
	</div>
</a>
</c:forEach>

<script type="text/javascript">
i = '${i}' == '' ? 0 : ${i};
if('${nomore}' == 'true'){
	var s = $('.J_view_more');
	s.empty();
	s.remove();
}
</script>