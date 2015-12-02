<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${flag }">
	<form 
		method="post" 
		action="http://openapi.ctrip.com/Hotel/OnlinePayEntry.aspx?AllianceId=${allianceId}&SID=${sid}&TimeStamp=${timestamp}&Signature=${signature}&RequestType=paymententry">
		
		<input type="hidden" name="ReturnUrl" value="http://www.baidu.com"/>
		<input type="hidden" name="Description" value="${order.ticketDesc }"/>
		<input type="hidden" name="ShowUrl" value="http://www.baidu.com"/>
		<input type="hidden" name="PaymentDescription" value="订单支付说明"/>
		<input type="hidden" name="OrderID" value="${tripOrderId }"/>
		<input type="hidden" name="OrderType" value="5"/>
		<input type="hidden" name="Language" value="ZH"/>
		<input type="hidden" name="OrderSummary" value="无"/>
		
		<input type="submit" value="提交"/>
	</form>
</c:if>
