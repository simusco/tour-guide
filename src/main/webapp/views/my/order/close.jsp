<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript">
$(function(){
	
	$('*[ui-btn-cancel]').each(function(){
		$(this).click(function(){
			var orderNo = $(this).attr('ui-btn-cancel');
			
			$.ajax({
				url : '<%=request.getContextPath()  %>/web/v1/order/cancel.html',
				method : 'GET',
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				data : {'orderNo' : orderNo},
				success : function(resp) {
					var o = $.parseJSON(resp),flag = o.flag,msg = o.msg;
					if(flag){
					}else{
					}
					
					alert(flag + '--' + msg);
				},
				error : function(resp) {
					alert('网络出现问题，刷新页面重新尝试！');
				}
			});
		});
	});
	
});
</script>

<div class="content__rightbody profile-grid__span-13--last">
    <div class="rightbody">
        <div class="rightbody__bread-crumb">
            <ol class="bread-crumb">
                <li><a href="">个人中心 ></a></li>
                <li><a href="">已完成</a></li>
            </ol>
        </div>
        <span class="rightbody__title">&nbsp;已完成</span>
        <div class="rightbody__grid">
        	<c:forEach items="${orderList }" var="order">
    		<div class="order">
    			<div class="order__title">
    				<div class="order-title container-12">
    					<div class="order-title__column--left span-4">&nbsp;订单号:${order.orderNo }</div>
    					<div class="order-title__column span-2"><fmt:formatDate value="${order.createTime }" pattern="yyyy-MM-dd"/></div>
    					<div class="order-title__column span-2">金额</div>
    					<div class="order-title__column span-2">状态</div>
    					<div class="order-title__column span-2-last">操作</div>
    				</div>
    			</div>
                <div class="order__body container-12">
                	<div class="order-body">
                		<div class="order-body__column--image span-2">
                      <div class="order-image">
                          <div class="order-image__img"><img src="${staticServerPath1 }/images/${order.ticketIcon}"></div>
                      </div>
                  </div>
                  <div class="order-body__column--name span-4">
                      <div class="order-name">
                          <span class="order-name__title">${order.ticketName}</span>
                          <span class="order-name__subtitle">${order.ticketDesc }</span>
                          <span class="order-name__subtitle">使用时间：${order.entryTime }至${order.endTime }</span>
                      </div>
                  </div>
                  <div class="order-body__column--price span-2"><span>￥${order.totalPrice }元</span></div>
                  <div class="order-body__column--state span-2"><span>
                  	<c:if test="${order.status == 'UNPAY' }">未支付</c:if>
                  	<c:if test="${order.status == 'PAYED' }">已支付</c:if>
                  	<c:if test="${order.status == 'CANCEL' }">订单取消</c:if>
                  </span></div>
                  <div class="order-body__column--btn span-2-last">
                      <div class="row-btn">
                       	<a class="btn-book">订单详情</a>
                      </div>
                  </div>
                	</div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</div>
