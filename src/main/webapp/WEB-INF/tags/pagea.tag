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

<p class="loadmore">
   	<%
		if (curIndex != 1) {
	%>
	<a href="javascript:gotoPage(<%=curIndex - 1%>)">上一页</a>
	<%
		} else {
	%>
	<span>上一页</span>
	<%
		}
	%>
   	<%
		if (curIndex < totalPage) {
	%>
		<a href="javascript:gotoPage(<%=curIndex + 1%>)">下一页</a>
	<%
		} else {
	%>
		<span>下一页</span>
	<%
		}
	%>
</p>