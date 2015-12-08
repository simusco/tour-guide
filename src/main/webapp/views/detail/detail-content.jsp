<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script src="${staticServerPath1 }/scripts/laydate/laydate.js"></script>
<script type="text/javascript">

	$.extend({
			ui:{
				switchScreen : {
					left : function(){
						var leftBtn = $('*[ui-switch-left-btn]');
						var scoll = $('*[ui-switch-scroll]');
						
						leftBtn.click(function(){
							var left = scoll.css('left');
							var width = scoll.css('width');
							//scoll.css('left', );
							
							var l = parseInt(left);
							var w = parseInt(width);
							
							if(l < 27){
								scoll.css('left', l + 158 + 'px');
							}
							
							$.ui.switchScreen.active().prev();
						});
					},
					right: function(){
						var rightBtn = $('*[ui-switch-right-btn]');
						var scoll = $('*[ui-switch-scroll]');
						
						rightBtn.click(function(){
							var left = scoll.css('left');
							var width = scoll.css('width');
							console.log(parseInt(left) + '---' + parseInt(width));
							//scoll.css('left', );
							
							var l = parseInt(left);
							var w = parseInt(width);
							
							if(w > 680 && l > -158 * 3){
								scoll.css('left', l - 158 + 'px');
							}
							
							$.ui.switchScreen.active().next();
						});
					},
					active: function(){
						var unactiveAll = function(){
							$('*[ui-image-review]').each(function(){
								$(this).removeClass('active');
								$(this).removeAttr('active');
							});
						};
						
						function _active(o){
							unactiveAll();
							
							o.addClass('active');
							o.attr('active', 'true');
							var url = o.attr('ui-image-review');
							
							$('*[ui-image-screen]').find('img').attr('src', url);
						};
						
						$('*[ui-image-review]').click(function(){
							_active($(this));
						});
						
						return {
							next:function(){
								var ae = $('*[ui-image-review][active=true]');
								var next = ae.next().get(0);
								
								if(next != null)
									_active($(next));
							},
							prev:function(){
								var ae = $('*[ui-image-review][active=true]');
								var prev = ae.prev().get(0);
								
								if(prev != null)
									_active($(prev));
							}
						};
					},
					run:function(){
						$.ui.switchScreen.left();
						$.ui.switchScreen.right();
						$.ui.switchScreen.active();
					}
				},
				tabCard:{
					bind:function(){
						var clear = function(){
							$('*[ui-tab-card]').each(function(){
								$(this).removeClass('active');
							});
						};
						
						$('*[ui-tab-card]').each(function(){
							$(this).click(function(){
								var flag = $(this).hasClass('active');
								if(!flag){
									clear();
									
									$(this).addClass('active');
								}
							});
						});
					}
				}
			},
			load:{
				ticket:function(date){
					$.ajax({
						url : '<%=request.getContextPath()  %>/web/v1/activity/ticket.html',
						method : 'GET',
						contentType : "application/x-www-form-urlencoded; charset=UTF-8",
						data : {'routeId' : '${route.activityPlanId }', 'date' : date},
						success : function(resp) {
							var tl = $('#ticket-list');
							tl.empty();
							tl.append(resp);
							$('div[ticket-time]').attr('ticket-time',date);
						},
						error : function(resp) {
							alert('网络出现问题，刷新页面重新尝试！');
						}
					});
				}
			}
	});

	$(function(){
		$.ui.switchScreen.run();
		$.ui.tabCard.bind();
		$.load.ticket('${currdate }');
		
		laydate({
		    elem: '#open-calendar',
		    format: 'YYYY-MM-DD',
		    festival: true,
		    min: laydate.now(0),
		    max: laydate.now(+30),
		    isclear:false,
		    choose: function(choseDate){
		    	$.load.ticket(choseDate);
		    }
		});
		
		$(window).scroll( function() {
			var scrollTop = $(this).scrollTop(),
				subnavbar = $('#subnavbar');
			
			if(scrollTop <= 1210){
				subnavbar.removeClass('fixed');
			}else{
				if(!subnavbar.hasClass('fixed'))
					subnavbar.addClass('fixed')
			}
	 	});
	});
	
	function favorite(activityId){
		
		$.ajax({
			url : '<%=request.getContextPath()  %>/web/v1/favorite/col.html',
			method : 'POST',
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			data : {'routeId' : activityId},
			success : function(resp) {
				var o = $.parseJSON(resp),flag = o.flag,msg = o.msg, msgcode = o.msgcode;
				if(flag){
					//提示收藏成功
					alert('收藏成功!');
				}else{
					if(msgcode == 'UNLOGIN'){
						//定位到登录窗口
					}else{
						
					}
				}
			},
			error : function(resp) {
				alert('网络出现问题，刷新页面重新尝试！');
			}
		});
		
	}
</script>

<div class="content mtl">

	<div class="content__overview">
		<div class="overview__header">
            <ol class="bread-crumb">
                <li><a href="<%=request.getContextPath()  %>/web/v1/activity/query.html?type=${type}">套餐&gt;&gt;</a></li>
                <li><a href="<%=request.getContextPath()  %>/web/v1/activity/detail.html?type=${type}&routeId=${route.activityPlanId }">${route.name }</a></li>
            </ol>
        </div>
        <div class="overview__body">
            <div class="route route--theme2 mtl">
                <div class="route__img">
                    <div class="route-img">
                        <div class="route-img__screen">
                            <div class="img-screen" ui-image-screen="">
                            	<c:forEach items="${route.imageList }" var="image" varStatus="x" begin="0" end="0">
                            		<img src="${staticServerPath1 }/images/${image.path}">
                            	</c:forEach>
                            </div>
                        </div>
                        <div class="route-img__control">
                            <div class="img-control">
                                <a class="img-control__btn img-control__btn--left" ui-switch-left-btn=""></a>
                                <div class="img-control__review clearfix" ui-switch-scroll="" style="width: ${fn:length(route.imageList) * 158 + 10}px;">
                                	<c:set value="0" var="index"/>
                                	<c:forEach items="${route.imageList }" var="image" varStatus="x">
	                                	<c:if test="${image.type == 'DETAIL-HEADER' }">
		                                    <div class="image-review ${index == 0 ? 'active' : '' }" active="${index == 0 ? 'true' : 'false'  }" ui-image-review="${staticServerPath1 }/images/${image.path}">
		                                        <img src="${staticServerPath1 }/images/${image.path}">
		                                    </div>
	                                    </c:if>
	                                    <c:set var="index" value="${index + 1 }"/>
                                    </c:forEach>
                                </div>
                                <a class="img-control__btn img-control__btn--right" ui-switch-right-btn=""></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="route__desc relative">
                    <div class="route-desc__header--theme2">
                        <h2>${route.name }</h2>
                        <p>${fn:substring(route.description, 0, 90) }${fn:length(route.description) > 90 ? "..." : ""}</p>
                    </div>
                    <c:if test="${route.type == 'HOT'}">
                    	<div class="route-desc__content--theme2">
	                        <ul class="tag-line tag-line--default">
	                            <li>建议游玩：</li>
	                            <li><span class="tag tag--out">${route.takeTime }</span></li>
	                        </ul>
	                        <c:out value="${route.otherAttr }" escapeXml="false"/>
	                        <ul class="tag-line tag-line--default">
	                            <li>主题特色：</li>
	                            <li>
	                                <c:out value="${route.topic }" escapeXml="false"/>
	                            </li>
	                        </ul>
	                    </div>
                    </c:if>
                    
                    <c:if test="${route.type == 'SPOT' }">
                    	<div class="route-desc__content--theme2">
	                        <ul class="tag-line tag-line--default">
				                <li>价格：</li>
				                <li><span class="tag tag--out">$${route.price }元</span><small>起/份 <del>门市价:${route.marketPrice }</del></small></li>
				            </ul>
				            <ul class="tag-line tag-line--default">
				                <li>已售：</li>
				                <li><span class="tag tag--out">${route.hasSaled }</span></li>
				            </ul>
				            <ul class="tag-line tag-line--default">
				                <li>好评率：</li>
				                <li><span class="tag tag--out">${route.goodReviewPer }%</span></li>
				            </ul>
				            <ul class="tag-line tag-line--default">
				                <li>主题特色：</li>
				                <li>
				                    <c:out value="${route.topic }" escapeXml="false"/>
				                </li>
				            </ul>
				            <ul class="tag-line tag-line--default">
				                <li>费用包含：</li>
				                <li>
				                	<c:out value="${route.expInclusive }" escapeXml="false"/>
				                </li>
				            </ul>
	                    </div>
                    </c:if>
                    
                    <c:if test="${route.type == 'TOPIC'}">
                    	<div class="route-desc__content--theme2">
	                        <ul class="tag-line tag-line--default">
				                <li>价格：</li>
				                <li><span class="tag tag--out">$${route.price }元</span><small>起/份 <del>门市价:${route.marketPrice }</del></small></li>
				            </ul>
				            <ul class="tag-line tag-line--default">
				                <li>已售：</li>
				                <li><span class="tag tag--out">${route.hasSaled }</span></li>
				            </ul>
				            <ul class="tag-line tag-line--default">
				                <li>好评率：</li>
				                <li><span class="tag tag--out">${route.goodReviewPer }%</span></li>
				            </ul>
				            <ul class="tag-line tag-line--default">
	                            <li>建议游玩：</li>
	                            <li><span class="tag tag--out">${route.takeTime }</span></li>
	                        </ul>
	                        <c:out value="${route.otherAttr }" escapeXml="false"/>
	                        <ul class="tag-line tag-line--default">
	                            <li>主题特色：</li>
	                            <li>
	                                <c:out value="${route.topic }" escapeXml="false"/>
	                            </li>
	                        </ul>
	                    </div>
                    </c:if>
                    
                    <div class="route-desc__toolbar text-right">
                        <a href="javascript:favorite('${route.activityPlanId }')" class="lh50 inline-block unstyled-link icon icon--fav">收藏<c:if test="${route.favorite }">(Y)</c:if></a>
                        <a href="" class="lh50 inline-block unstyled-link icon icon--share mll">分享</a>
                    </div>
                </div>
            </div>
        </div>
	</div>
	
	<div class="content__spot">
	    <div class="panel">
	        <div class="panel__title">
	            <span class="panel-title panel-title--spot">亮点</span>
	        </div>
	        <div class="panel__content">
	            <ul class="tag-line tag-line--default">
	                <li class="icon icon--eat">吃点：</li>
	                <li>
	                	<c:forEach items="${goodnessList }" var="goodness">
	                	<c:if test="${goodness.type == 'EAT' }">
	                    <span><a href="<%=request.getContextPath()  %>/web/v1/activity/goodness.html?type=${type}&routeId=${route.activityPlanId}#${goodness.anchor }" class="tag--default" target="_blank">${goodness.name }</a></span>
	                    </c:if>
	                    </c:forEach>
	                </li>
	            </ul>
	            <ul class="tag-line tag-line--default">
	                <li class="icon icon--play">玩点：</li>
	                <li>
	                    <c:forEach items="${goodnessList }" var="goodness">
		                	<c:if test="${goodness.type == 'PLAY' }">
		                    	<span><a href="<%=request.getContextPath()  %>/web/v1/activity/goodness.html?type=${type}&routeId=${route.activityPlanId}#${goodness.anchor }" class="tag--default">${goodness.name }</a></span>
		                    </c:if>
	                    </c:forEach>
	                </li>
	            </ul>
	            <ul class="tag-line tag-line--default">
	                <li class="icon icon--spot">景点：</li>
	                <li>
	                    <c:forEach items="${goodnessList }" var="goodness">
		                	<c:if test="${goodness.type == 'SPOT' }">
		                    	<span><a href="<%=request.getContextPath()  %>/web/v1/activity/goodness.html?type=${type}&routeId=${route.activityPlanId}#${goodness.anchor }" class="tag--default">${goodness.name }</a></span>
		                    </c:if>
	                    </c:forEach>
	                </li>
	            </ul>
	        </div>
	    </div>
	</div>
	
	<div class="content__book">
	    <div class="panel">
	        <div class="panel__title">
	            <span class="panel-title panel-title--book">预定</span>
	        </div>
	        <div class="panel__content">
	            <div class="book__datapicker">
	                <span class="book__datapicker--title">选择出行日期:</span>
	                <div class="open-calendar" id="open-calendar" ticket-time="${currdate }">
	                	${currdate }
	                </div>
	            </div>
	            <div class="book__table" id="ticket-list">
	            </div>
	        </div>
	    </div>
	</div>
	
	<div class="subnavbar clearfix b" id="subnavbar">
        <div class="subnav-wraper">
            <ul class="nav">
                <li ui-tab-card="buyknow" class="nav__item--theme2 span-6 active"><a href="#buyknow">购买须知</a></li>
                <li ui-tab-card="recplan" class="nav__item--theme2 span-6-last"><a href="#recplan">推荐玩法</a></li>
            </ul>
        </div>
    </div>
    
    <div class="content mtl">
        <div class="content__buyknow" id="buyknow">
            <div class="panel panel--theme1">
                <div class="panel__title panel__title--theme1">
                    <span class="panel__title--buyknow">购买须知</span>
                </div>
                <div class="panel__content">
                	<c:forEach items="${activityExtraList }" var="activityExtra">
                		<c:if test="${activityExtra.type == 'NEED_KNOW' }">
                		<c:out value="${activityExtra.content }" escapeXml="false"/>
                		</c:if>
                	</c:forEach>
                </div>
            </div>
        </div>
        <div class="content__recplan"  id="recplan">
            <div class="panel panel--theme1">
                <div class="panel__title panel__title--theme1">
                    <span class="panel__title--recplan">推荐玩法</span>
                </div>
                <div class="panel__content">
                	<c:forEach items="${activityExtraList }" var="activityExtra">
                		<c:if test="${activityExtra.type == 'REC_PLAN' }">
                		<c:out value="${activityExtra.content }" escapeXml="false"/>
                		</c:if>
                	</c:forEach>
                </div>
            </div>
        </div>
    </div>

</div>