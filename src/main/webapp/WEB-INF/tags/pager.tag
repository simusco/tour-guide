<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ attribute name="curIndex" type="java.lang.Long" required="true"%>
<%@ attribute name="pageSize" type="java.lang.Long" required="true"%>
<%@ attribute name="pagerRange" type="java.lang.Long" required="true"%>
<%@ attribute name="totalPage" type="java.lang.Long" required="true"%>
<%
	long begin = Math.max(1, curIndex - pagerRange / 2);
	long end = Math.min(begin + (pagerRange - 1), totalPage);

	request.setAttribute("p_begin", begin);
	request.setAttribute("p_end", end);
%>

<ul class="pagination">
   	<%
		if (curIndex != 1) {
	%>
	<li><a href="javascript:gotoPage(<%=curIndex - 1%>)" class="pagination_item first">上一页</a></li>
	<%
		} else {
	%>
	<li><a href="javascript:gotoPage(1)" class="pagination_item first">上一页</a></li>
	<%
		}
	%>
   
   	<c:forEach var="i" begin="${p_begin}" end="${p_end}">
		<c:choose>
			<c:when test="${i == curIndex}">
				<li><a class="pagination_item pagination_item--active" href="javascript:gotoPage(${i})">${i}</a></li>
			</c:when>
			<c:otherwise>
				<li><a class="pagination_item" href="javascript:gotoPage(${i})">${i}</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
   
   	<%
		if (curIndex < totalPage) {
	%>
		<li><a href="javascript:gotoPage(<%=curIndex + 1%>)"  class="pagination_item last">下一页</a></li>
	<%
		} else {
	%>
		<li><a href="javascript:gotoPage(<%=totalPage%>)" class="pagination_item last">下一页</a></li>
	<%
		}
	%>
</ul>