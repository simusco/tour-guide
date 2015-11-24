<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${flag }">
	支付成功，订单号:${out_trade_no },支付宝流水号:${trade_no }
</c:if>
<c:if test="${not flag }">
	订单支付失败!
</c:if>