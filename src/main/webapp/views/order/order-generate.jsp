<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript">

$.extend({
	
	printMsg : function(msg){
		var c = $('*[ui-valid-msg=msg]');
		c.empty();
		c.append('<small>'+msg+'</small>');
	},
	
	clearMsg : function(){
		var c = $('*[ui-valid-msg=msg]');
		c.empty();
	},
	
	checkIsPhontNo : function(string){
		return !!string
			.match(/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/);
	},
	
	checkName : function (val){
		if (val == null || val.length < 2 || val.length > 6) {
			return false;
		}
		return true;
	},
	
	checkRemark: function(remark){
		return remark.length > 200 ? false : true;
	},
	
	calculateTotalPrice: function(){
		$('*[ticket-checked=true]').each(function(){
			var dataStore = $(this), order = {};
			
			order['ticketId'] = dataStore.attr('ticket-id'),
			order['ticketDetailId'] = dataStore.attr('ticket-detail-id'),
			order['quantity'] = dataStore.attr('quantity'),
			order['entryTime'] = dataStore.attr('entry-time'),
			order['bookDay'] = dataStore.attr('book-day'),
			
			//TODO
			order.totalPrice = order.quantity * order.bookDay * 100;
			
			dataStore.attr('total-price', order.totalPrice);
			$('*[ui-total-price]').html('￥'+order.totalPrice + '元');
		});
	},
	
	bind:{
		check : {
			name : function(){
				$('input[name=name]').keyup(function() {
					var flag = $.checkName($(this).val());
					$.clearMsg();

					if (!flag) {
						$.printMsg('*长度为2-6汉字');
					}
				});
			},
			phoneNo:function(){
				$('input[name=phoneNo]').blur(function() {
					var phoneNo = $(this).val();
					$.clearMsg();
					
					if (phoneNo != '' && !$.checkIsPhontNo(phoneNo)) {
						$.printMsg('*手机号码不正确');
					}
				});
			},
			remark:function (){
				$('input[name=remark]').blur(function() {
					var remark = $(this).val();
					$.clearMsg();
					
					if(!$.checkRemark(remark)){						
						$.printMsg('*备注文字过长！');
					}
				});
			},
			
			all : function(){
				$.bind.check.name();
				$.bind.check.phoneNo();
				$.bind.check.remark();
			},
			
			isPassAll:function(){
				var name = $('input[name=name]'),
					phoneNo = $('input[name=phoneNo]'),
					remark = $('input[name=remark]'),
					flag = true;
				
				if(!$.checkRemark(remark.val())){
					remark.trigger('blur');
					flag = false;
				}else if(!$.checkName(name.val())) {
					name.trigger('keyup');
					flag = false;
				}else if(phoneNo.val() == '' || !$.checkIsPhontNo(phoneNo.val())){
					phoneNo.trigger('blur');
					flag = false;
				}
				
				return flag;
			},
			
			order: function(order){
				console.log(order);
				return true;
			}
		},
		
		selectTicket: function(){
			$('*[ui-ticket-checkbox]').click(function(){
				var checkbox = $(this);
				var ticketDetailId = checkbox.attr('ui-ticket-checkbox');
				
				$('*[ui-ticket-checkbox]').each(function(){
					$(this).removeClass('selected');
				});
				
				$('*[ticket-detail-id]').each(function(){
					var id = $(this).attr('ticket-detail-id');
					$(this).attr('ticket-checked','false');
					
					if(id == ticketDetailId){
						checkbox.addClass('selected');
						$(this).attr('ticket-checked','true');
						
						$.calculateTotalPrice();
					}
				});
			});
		},
		
		payment : function(){
			$('*[ui-payment-btn]').click(function(){
				
				var dataStore = $('*[ticket-checked=true]'),order = {},visitors = [];
				
				order['ticketId'] = dataStore.attr('ticket-id'),
				order['ticketDetailId'] = dataStore.attr('ticket-detail-id'),
				order['quantity'] = dataStore.attr('quantity'),
				order['entryTime'] = dataStore.attr('entry-time'),
				order['totalPrice'] = dataStore.attr('total-price');
				order['remark'] = $('input[name=remark]').val();
				order['bookDay'] = dataStore.attr('book-day');
				
				var visitor = {};
					visitor.name = $('input[name=name]').val();
					visitor.telephone = $('input[name=phoneNo]').val();
				visitors.push(visitor);
				
				order['orderVisitors'] = visitors;
				
				if(!$.bind.check.order(order)){
					return;
				}
				
				$.ajax({
					url : '<%=request.getContextPath()  %>/web/v1/order/generate.html',
					method : 'POST',
					contentType : "application/json",
					data : JSON.stringify(order),
					success : function(resp) {
						alert('ssddd');
					},
					error : function(resp) {
						alert('*网络出现问题，刷新页面重新尝试！');
					}
				});
				
			});
		}
	},
});

$(function(){
	$.bind.check.all();
	$.bind.payment();
	$.bind.selectTicket();
});

</script>

<div class="content mtl">

	<div class="panel">
          <!-- 
          <div class="panel__title">
              <span class="panel__title--lcolor">进度</span>
          </div> 
          -->
          <div class="panel__content">
              <div class="order-progress">
                  <ul class="order-progress__item finished first">
                      <li class="step-text">
                          <span class="disc--finished">&nbsp;</span>
                          <p>选择套餐和日期</p>
                      </li>
                  </ul>
                  <ul class="order-progress__item finished">
                      <li class="step-text">
                          <span class="disc--finished">&nbsp;</span>
                          <p>填写并核对信息</p>
                      </li>
                  </ul>
                  <ul class="order-progress__item">
                      <li class="step-text">
                          <span class="disc">&nbsp;</span>
                          <p>提交并支付订单</p>
                      </li>
                  </ul>
                  <ul class="order-progress__item last">
                      <li class="step-text">
                      </li>
                  </ul>
              </div>
          </div>
	</div>
	
	<div class="panel mtl">
          <div class="panel__title">
              <span class="panel__title--lcolor">套餐信息</span>
          </div>
          <div class="panel__content">
              <div class="order-ticket">
                  <div class="order-ticket__title">
                      <p>${ticket.name }</p>
                  </div>
                  <div class="order-ticket__body">
                      <div class="form">
                          <div class="row row--title">
                              <div class="span-4"><span class="mll">项目</span></div>
                              <div class="span-1 text-center">操作</div>
                              <div class="span-3 text-center">入住日期</div>
                              <div class="span-2 text-center">套餐数量</div>
                              <div class="span-2-last text-center">入住晚上</div>
                          </div>
                          
                          <c:forEach items="${ticketDetailList }" var="ticketDetail">                          
                          <div class="row row--order" 
                          	   ticket-id="${ticket.ticketId }" 
                          	   ticket-detail-id="${ticketDetail.ticketDetailId}"
                          	   quantity="1"
                          	   entry-time="${ticketTime }"
                          	   total-price="100"
                          	   book-day="1"
                          	   >
                              <div class="span-4 order-column--name">
                                  <div class="order-name">
                                      <span class="order-name__title">${ticketDetail.name }</span>
                                      <span class="order-name__subtitle">${ticketDetail.description }</span>
                                  </div>
                              </div>
                              <div class="span-1 order-column"><span class="checkbox" ui-ticket-checkbox="${ticketDetail.ticketDetailId }"></span></div>
                              <div class="span-3 order-column">${ticketTime }</div>
                              <div class="span-2 order-column">
                                  <span class="num-btn">
                                      <span class="num-btn__minus">-</span><input class="num-btn__text" type="text" value="1"><span class="num-btn__plus">+</span>
                                  </span>
                              </div>
                              <div class="span-2-last order-column">
                                  <span class="num-btn">
                                      <span class="num-btn__minus">-</span><input class="num-btn__text" type="text" value="1"><span class="num-btn__plus">+</span>
                                  </span>
                              </div>
                          </div>
                          </c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="panel mtl">
	    <div class="panel__title">
	        <span class="panel__title--lcolor">联系人信息</span>
	    </div>
	    <div class="panel__content">
	        <form action="" class="form" method="post">
	        	<div class="row">
                    <div class="span-12-last">
                        <span class="msg--error" ui-valid-msg="msg"></span>
                    </div>
                </div>
	            <div class="row">
	                <div class="span-3">
	                    <span>姓名：</span>
	                    <input class="form__control" type="text" value="" name="name">
	                </div>
	                <div class="span-9-last">
	                    <span>手机：</span>
	                    <input class="form__control" type="text" value="13410240005" name="phoneNo">
	                </div>
	            </div>
	
	            <div class="row">
	                <div class="span-12-last">
	                    <span>备注：</span>
	                    <input class="form__control" type="text" value="" style="width:60%"  name="remark">
	                </div>
	            </div>
	        </form>
	    </div>
	</div>
	
	<div class="payment container-12 mtl">
	    <div class="payment__back span-6">
	        <a href="<%=request.getContextPath()  %>/web/v1/activity/detail.html?type=${type }&routeId=${ticket.activityId}" class="payment-back">返回</a>
	    </div>
	    <div class="payment__btn span-6-last text-right">
	        <div class="payment-price">
	            <span class="payment-price__pay">应付金额<span class="tag--price" ui-total-price="0">￥0元</span></span>
	            <span class="payment-price__desc">(套餐价2888元)</span>
	        </div>
	        <a class="payment-btn">
	            <span class="payment-btn__title" ui-payment-btn="">去支付</span>
	            <span class="payment-btn__subtitle">我已阅读以下内容</span>
	        </a>
	    </div>
	</div>

</div>