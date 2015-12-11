<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<div class="ticket-detail strech-full" style="display:block;">
    <div class="ticket-detail__content" style="top:880px;">
        <div class="ticket-detail__header lh50 bn bn-b-1">
            <span class="ticket-detail__title font-3x font-color-grey-1"><span class="pll">套餐详情</span></span>
            <i class="ticket-detail__close" onclick="$.ticket.desc.close()">×</i>
        </div>
        <div class="ticket-detail__body">
        	<c:out value="${ticket.detail }" escapeXml="false"></c:out>
        </div>
    </div>
    <div class="ticket-detail__mask strech-full"></div>
</div>