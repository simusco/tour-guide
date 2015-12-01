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
							var ml = scoll.css('margin-left');
							var mr = scoll.css('margin-right');
							console.log(mr);
							scoll.css('margin-left', parseInt(ml) + 152);
						});
					},
					right: function(){
						var leftBtn = $('*[ui-switch-right-btn]');
						var scoll = $('*[ui-switch-scroll]');
						
						leftBtn.click(function(){
							var ml = scoll.css('margin-left');
							ml = parseInt(ml);
							
							scoll.css('margin-left', ml - 152);
						});
					},
					active: function(){
						var unactiveAll = function(){
							$('*[ui-image-review]').each(function(){
								$(this).removeClass('active');
								$(this).removeAttr('active');
							});
						}
						
						$('*[ui-image-review]').click(function(){
							unactiveAll();
							
							$(this).addClass('active');
							$(this).attr('active', 'true');
							var url = $(this).attr('ui-image-review');
							
							$('*[ui-image-screen]').find('img').attr('src', url);
						});
					},
					run:function(){
						$.ui.switchScreen.left();
						$.ui.switchScreen.right();
						$.ui.switchScreen.active();
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
	});
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
                                <a class="img-control__btn--left" ui-switch-left-btn=""></a>
                                <div class="img-control__review" ui-switch-scroll="">
                                	<c:forEach items="${route.imageList }" var="image" varStatus="x">
	                                	<c:if test="${image.type == 'DETAIL-HEADER' }">
		                                    <div class="image-review" ui-image-review="${staticServerPath1 }/images/${image.path}">
		                                        <img src="${staticServerPath1 }/images/${image.path}">
		                                    </div>
	                                    </c:if>
                                    </c:forEach>
                                </div>
                                <a class="img-control__btn--right" ui-switch-right-btn=""></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="route__desc">
                    <div class="route-desc__header--theme2">
                        <h2>${route.name }</h2>
                        <c:if test="${route.type == 'HOT' }">
                        	<p>${route.description }</p>
                        </c:if>
                    </div>
                    <c:if test="${route.type == 'HOT' || route.type == 'TOPIC'  }">
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
	
	<div class="subnavbar">
        <div class="subnav-wraper">
            <ul class="nav">
                <li class="nav__item--theme2 span-6"><a href="">购买须知</a></li>
                <li class="nav__item--theme2 span-6-last active"><a href="">推荐玩法</a></li>
            </ul>
        </div>
    </div>
    
    <div class="content mtl">
        <div class="content__buyknow">
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
        <div class="content__recplan">
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