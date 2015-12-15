<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript">

$.extend({
	
	g:{
		fn:{
			valid:{
				checkName : function (val){
					if (val == null || val.length < 2 || val.length > 6) {
						return false;
					}
					return true;
				},
				checkRemark: function(remark){
					return remark.length > 200 ? false : true;
				},
				checkIsPhontNo : function(string){
					return !!string
						.match(/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/);
				}
			},
			msg:{
				print:function(msg){
					$.g.fn.msg.clear();
					
					//append
					var c = $('*[ui-valid-msg=msg]');
					c.append(msg);
				},
				clear:function(){
					$('*[ui-valid-msg=msg]').empty();
				}
			},
			req:function(url, method, data, succss, error){
				$.ajax({
					url : url,
					method : method,
					contentType : "application/json",
					data : data,
		    		success : function(resp) {
		    			var o = $.parseJSON(resp),flag = o.flag,msg = o.msg;
						if(flag){
			    			succss(msg, o);
						}else{
							if(error != null) 
								error(msg, o);
						}
		    		},
		    		error : function(resp) {
		    			if(error != null) 
							error('网络出现问题，刷新页面重新尝试！', null);
		    		}
		    	});
			},
			displayTotalPrice:function(price){
				$('*[ui-total-price]').html('￥'+ price + '元');
			},
			getTicketRow:function(tdid){
				return $('div[ticket-detail-id='+tdid+']');
			},
			remind:{
				display:function(msg){
					var html = $('#order-valid-msg-tlp').html().replace(/\{\{msg\}\}/, msg);
					var msg = $('#order-valid-msg');
					
					msg.empty();
					msg.append(html);
					
					$('*[ui-pop-content]', msg).css('top',$(document).scrollTop() + 50 + 'px');
				},
				close:function(){
					$('#order-valid-msg').empty();
				}
			}
		},
		calc:{
			totalPrice:function(fn){
				var selectedTicket = $('*[ticket-checked=true]');
				if(selectedTicket.length == 0){
					$.g.fn.displayTotalPrice(0);
					return;
				}
				
				selectedTicket.each(function(){
					var dataStore = $(this), order = {};
					
					order['ticketId'] = dataStore.attr('ticket-id'),
					order['ticketDetailId'] = dataStore.attr('ticket-detail-id'),
					order['quantity'] = dataStore.attr('quantity'),
					order['entryTime'] = dataStore.attr('entry-time'),
					order['bookDay'] = dataStore.attr('book-day'),
					
					//TODO,ajax load price
					$.g.fn.req(
						'<%=request.getContextPath()  %>/web/v1/order/price.html',
						'POST',
						JSON.stringify(order),
						function(msg, o){
							dataStore.attr('total-price', o.price);
			    			order.totalPrice = o.price;
			    			$.g.fn.displayTotalPrice(o.price);
						},
						function(msg, o){
							if(fn != null) fn();
							alert(msg);
						}
					);
				});
			}
		}
	},
	
	load:{
		page : function(url, params, fn){
			$.ajax({
	    		url : url,
	    		async : false,
	    		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	    		data : params,
	    		success : function(resp) {
	    			fn(resp);
	    		},
	    		error : function(resp) {alert('网络出现问题，刷新页面重新尝试！');}
	    	});
		}
	},
	
	bind:{
		minuAndPlus:function(){
			var minus = $('*[ui-btn-minus]'),plus = $('*[ui-btn-plus]');
			
			minus.click(function(){
				var m = $(this).attr('ui-btn-minus');
				var ticket = $.g.fn.getTicketRow($(this).attr('tdi'));
				var n = parseInt(ticket.attr(m));
				var i = $(this).parent().find('*[ui-num-text]');
				
				if(n > 1){
					ticket.attr(m, --n);
				}
				i.val(n);
				
				$.g.calc.totalPrice();
			});
			
			plus.click(function(){
				var m = $(this).attr('ui-btn-plus');
				var ticket = $.g.fn.getTicketRow($(this).attr('tdi'));
				var n = parseInt(ticket.attr(m));
				var i = $(this).parent().find('*[ui-num-text]');
				var maxV = i.attr('ui-max-value');
				
				if(n <= maxV){
					ticket.attr(m, ++n);
				}
				i.val(n);
				
				$.g.calc.totalPrice(function(){
					ticket.attr(m, --n);
					i.val(n);
				});
			});
		},
		
		check : {
			name : function(){
				$('input[name=name]').keyup(function() {
					var flag = $.g.fn.valid.checkName($(this).val());
					$.g.fn.msg.clear();

					if (!flag) {
						$.g.fn.msg.print('*长度为2-6汉字');
					}
				});
			},
			phoneNo:function(){
				$('input[name=phoneNo]').blur(function() {
					var phoneNo = $(this).val();
					$.g.fn.msg.clear();
					
					if (phoneNo != '' && !$.g.fn.valid.checkIsPhontNo(phoneNo)) {
						$.g.fn.msg.print('*手机号码不正确');
					}
				});
			},
			remark:function (){
				$('input[name=remark]').blur(function() {
					var remark = $(this).val();
					$.g.fn.msg.clear();
					
					if(!$.g.fn.valid.checkRemark(remark)){						
						$.g.fn.msg.print('*备注文字过长！');
					}
				});
			},
			
			order: function(order){
				var flag = true;
				if(!$.g.fn.valid	.checkRemark(order.remark)){
					$.g.fn.msg.print('*备注文字过长！');
					return !flag;
				}
				
				var visitors = order.orderVisitors;
				for(var i=0;i<visitors.length;i++){
					var visitor = visitors[i];
					
					if(!$.g.fn.valid.checkName(visitor.name)) {
						$.g.fn.msg.print('*长度为2-6汉字');
						flag = false;
						break;
					}
					
					if(visitor.telephone == '' || !$.g.fn.valid.checkIsPhontNo(visitor.telephone)){
						$.g.fn.msg.print('*手机号码不正确');
						flag = false;
						break;
					}
				}
				
				if(order.ticketDetailId == null){
					$.g.fn.msg.print('*未选择任何套餐');
					return !flag;
				}
				
				return flag;
			},
			
			exec:function(){
				$.bind.check.name();
				$.bind.check.phoneNo();
				$.bind.check.remark();
			}
		},
		
		selectTicket: function(){
			var _unselect = function(checkbox){
				checkbox.removeClass('selected');
				$.g.fn.getTicketRow(checkbox.attr('ui-ticket-checkbox')).attr('ticket-checked','false');
			};
			
			var _select = function(checkbox){
				checkbox.addClass('selected');
				$.g.fn.getTicketRow(checkbox.attr('ui-ticket-checkbox')).attr('ticket-checked','true');
			};
			
			$('*[ui-ticket-checkbox]').click(function(){
				var checkbox = $(this);
				var selected = checkbox.hasClass('selected');
				
				if(selected){
					_unselect(checkbox);
				}else{
					$('*[ui-ticket-checkbox]').each(function(){
						_unselect($(this));
					});
					
					//selected and cal.
					_select(checkbox);
				}
				
				$.g.calc.totalPrice();
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
				
				/*if(!$.bind.check.order(order)){
					return;
				}*/
				
				$.g.fn.remind.display("订单处理中....");
				$.g.fn.req(
					'<%=request.getContextPath()  %>/web/v1/order/generate.html',
					'POST',
					JSON.stringify(order),
					function(msg, o){
						window.location.href='<%=request.getContextPath()  %>/web/v1/order/payment.html?orderNo='+o.orderNo;
						$.g.fn.remind.close();
					},
					function(msg, o){
						$.g.fn.remind.display(msg);
					}
				);
				
			});
		}
	},
});

$(function(){
	$.bind.minuAndPlus();
	$.bind.check.exec();
	$.bind.payment();
	$.bind.selectTicket();
});

</script>

<div class="content mtl">
	<div class="panel">
          <div class="panel__content--ger">
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
              <span class="panel-title panel-title--lcolor">套餐信息</span>
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
                          <c:if test="${ticketDetail.isDisplay == 'yes'}">               
                          <div class="row row--order" 
                          	   ticket-id="${ticket.ticketId }" 
                          	   ticket-detail-id="${ticketDetail.ticketDetailId}"
                          	   quantity="1"
                          	   entry-time="${ticketTime }"
                          	   total-price=""
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
                                      <span class="num-btn__minus" ui-btn-minus="quantity" tdi="${ticketDetail.ticketDetailId}">-</span><input class="num-btn__text" type="text" value="1" ui-num-text="" ui-max-value="99" disabled="disabled"><span class="num-btn__plus" ui-btn-plus="quantity" tdi="${ticketDetail.ticketDetailId}">+</span>
                                  </span>
                              </div>
                              <div class="span-2-last order-column">
                                  <span class="num-btn">
                                      <span class="num-btn__minus" ui-btn-minus="book-day" tdi="${ticketDetail.ticketDetailId}">-</span><input class="num-btn__text" type="text" value="1" ui-num-text="" ui-max-value="7" disabled="disabled"><span class="num-btn__plus" ui-btn-plus="book-day" tdi="${ticketDetail.ticketDetailId}">+</span>
                                  </span>
                              </div>
                          </div>
                          </c:if>
                          </c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="panel mtl">
	    <div class="panel__title">
	        <span class="panel-title panel-title--lcolor">联系人信息</span>
	    </div>
	    <div class="panel__content--ger">
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
	                    <input class="form__control" type="text" value="" name="phoneNo">
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
	        <a href="<%=request.getContextPath()  %>/web/v1/activity/detail.html?type=${type }&routeId=${ticket.activityId}" class="payment-back">返回上一级</a>
	    </div>
	    <div class="payment__btn span-6-last text-right">
	        <div class="payment-price">
	            <span class="payment-price__pay">应付金额<span class="tag--price" ui-total-price="0">￥0元</span></span>
	            <span class="payment-price__desc">(套餐价2888元)</span>
	        </div>
	        <a href="javascript:;" class="payment-btn" onselectstart="return false" style="-moz-user-select:none;" ui-payment-btn="">
	            <span class="payment-btn__title">去支付</span>
	            <span class="payment-btn__subtitle">我已阅读以下内容</span>
	        </a>
	    </div>
	</div>
	
	<c:if test="${not empty ticket.buyPolicy}">
	<div class="panel mtl">
	    <div class="panel__title">
	        <span class="panel-title panel-title--lcolor">购买须知</span>
	    </div>
	    <div class="panel__content--ger">
	    	<c:out value="${ticket.buyPolicy }" escapeXml="false"/>
	    </div>
	</div>
	</c:if>
	
	<c:if test="${not empty ticket.cancelPolicy}">
	<div class="panel mtl">
	    <div class="panel__title">
	        <span class="panel-title panel-title--lcolor">退改须知</span>
	    </div>
	    <div class="panel__content--ger">
	    	<c:out value="${ticket.cancelPolicy }" escapeXml="false"/>
	    </div>
	</div>
	</c:if>
	
	<div id="order-valid-msg"></div>
	<div id="order-valid-msg-tlp" style="display: none;">
		<div class="pop-box strech-full">
	         <div class="pop-box__content" ui-pop-content="">
	             <div class="pop-box__header lh50 bn bn-b-1">
	                 <span class="pop-box__title font-3x font-color-grey-1"><span class="pll">提示：</span></span>
	                 <i class="pop-box__close" onclick="$('#order-valid-msg').empty();">×</i>
	             </div>
	             <div class="pop-box__body">
	                 <p>{{msg}}</p>
	             </div>
	         </div>
	         <div class="pop-box__mask strech-full"></div>
	    </div>
	</div>
	
</div>