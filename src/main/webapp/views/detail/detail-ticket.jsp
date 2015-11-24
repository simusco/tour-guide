<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript">
$(function(){
	
	$('*[ui-book-btn]').each(function(){
		
		$(this).click(function(){
			var self = $(this),
				ticketId = self.attr('ticket-id'),
				ticketTime = $('div[ticket-time]').attr('ticket-time');
			
			window.location.href = '<%=request.getContextPath()  %>/web/v1/order/generate.html?ticketId='+ticketId+'&ticketTime='+ticketTime;
		})
		
	});
	
});
</script>

<c:forEach items="${ticketList }" var="ticket">
	<div class="book-ticket">
	    <div class="span-2 book-ticket__image">
	        <div class="ticket-image">
	            <div class="ticket-image__img"><img src="${staticServerPath1 }/images/${ticket.icon }"></div>
	        </div>
	    </div>
	    <div class="span-4 book-ticket__name">
	        <div class="ticket-name">
	            <span class="ticket-name__title">${ticket.name }</span>
	            <a href="" class="ticket-name__subtitle--link">【点击查看详情】</a>
	        </div>
	    </div>
	    <div class="span-2 book-ticket__price">
	        <span class="tag--price">￥${ticket.price }元</span>
	    </div>
	    <div class="span-2 book-ticket__marketprice">
	        <del>
	        	<c:choose>
	        		<c:when test="${empty ticket.marketPrice || ticket.marketPrice <= 0.0 }">门市价：无</c:when>
	        		<c:otherwise>门市价：${ticket.marketPrice }元</c:otherwise>
	        	</c:choose>
	        </del>
	    </div>
	    <div class="span-2-last book-ticket__btn">
	        <button class="btn-book" ui-book-btn="" ticket-id="${ticket.ticketId }">立即预定</button>
	    </div>
	</div>
</c:forEach>