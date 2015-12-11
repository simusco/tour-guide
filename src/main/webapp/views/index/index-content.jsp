<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript">
$.extend({
	animation : {
		adv : function(container){
			var curIndex = 0,circles = [],cssArray =  [], t = this;
			
			$('*[ui-animation-img]', container).each(function(){
				var img = $(this).attr('src');
				var css = "url("+img+") no-repeat center center";
				
				cssArray.push(css);
			});
			
			$('*[ui-animation-circle]', container).each(function(){
				circles.push($(this));
			});
			
			this.play = function(){
				container.css('background',cssArray[curIndex++]);
				var interval = window.setInterval(function(){
					if(curIndex >= cssArray.length)
						curIndex = 0;
						
					t.display(curIndex);
					
					curIndex++;
				}, 4000)
			};
			
			this.display = function(index){
				var css = cssArray[index],circle = circles[index];
				container.css('background',css);
				for(var x = 0;x<circles.length;x++){
					circles[x].removeClass('active');
				};
				circle.addClass('active');
			}
			
			this.next = function(){
				if(curIndex > cssArray.length-1)
					curIndex = 0;
				
				t.display(curIndex);
				
				curIndex++;
			}
			this.pre = function(){
				curIndex--;
				
				if(curIndex < 0)
					curIndex = cssArray.length-1;
				
				t.display(curIndex);
			}
			
			return this;
		}
	},
	doNothing : function(){}
});

var advAnimation = null;
$(function(){
	var advContainer = $("*[ui-animation=adv]");
	advAnimation = $.animation.adv(advContainer);
	
	advAnimation.play();
});
</script>

<div class="advertise">
    <div class="advertise__screen" ui-animation="adv">
    
    	<img alt="" ui-animation-img="" src="${staticServerPath1 }/images/index/banner1.png" style="display:none">
        <img alt="" ui-animation-img="" src="${staticServerPath1 }/images/index/banner2.png" style="display:none">
        <img alt="" ui-animation-img="" src="${staticServerPath1 }/images/index/banner1.png" style="display:none">

        <div class="advertise__ctrlbar">
            <div class="ctrlbar">
                <div class="ctrlbar__btn--left"><a href="javascript:advAnimation.pre();"></a></div>
                <div class="ctrlbar__btn--right"><a href="javascript:advAnimation.next();"></a></div>
            </div>
        </div>

        <div class="advertise__circlebar">
            <div class="circlebar">
                <div class="circlebar__item"><a href="javascript:advAnimation.display(0);" ui-animation-circle="" class="active">&nbsp;</a></div>
                <div class="circlebar__item"><a href="javascript:advAnimation.display(1);" ui-animation-circle="">&nbsp;</a></div>
                <div class="circlebar__item"><a href="javascript:advAnimation.display(2);" ui-animation-circle="">&nbsp;</a></div>
            </div>
        </div>
    </div>
</div>

<div class="content">
    <div class="content__hot">
        <div class="package__title package-icon--hot relative">
            <span class="package-text">热门套餐
                <small class="package-text__small">海量周边热门实惠套餐</small>
            </span>
            <a class="package-more" href="<%=request.getContextPath()  %>/web/v1/activity/query.html?type=HOT">更多&gt;&gt;</a>
        </div>
        <div class="package__body index-grid">
        	<c:forEach items="${hotlist }" var="hot" varStatus="x">
        	<div class="index-grid__span-2${x.count == 4 ? '--last' : ''}">
                <a title="${hot.name }" href="<%=request.getContextPath()  %>/web/v1/activity/detail.html?type=HOT&routeId=${hot.activityPlanId }" title="" class="index-hot">
                    <div class="index-hot__img"><img src="${staticServerPath1 }/images/${hot.imageURL }" alt=""></div>
                    <div class="index-hot__desc">
                         <div class="hot-desc">
                             <h4 class="hot-desc__title">${hot.name }</h4>
                             <p class="hot-desc__comment">
                                <span class="tag--out">${hot.hasSaled }</span>人购买 
                                <span class="tag--out">${hot.goodReviewPer }%</span>好评
                            </p>
                             <p class="hot-desc__text" title="${hot.description }">${fn:substring(hot.description, 0, 36) }${fn:length(hot.description) > 36 ? "..." : ""}</p>
                         </div>
                    </div>
                    <div class="index-hot__price">
                        <span class="tag--out blod">￥${hot.price }元起</span>
                        <span>/份<c:if test="${hot.marketPrice > 0 }"><del class="font-1x mlm">门市价:${hot.marketPrice }</del></c:if></span>
                    </div>
                </a>
            </div>
        	</c:forEach>
        </div>
    </div>
    <div class="content__spot">
        <div class="package__title package-icon--spot relative">
            <span class="package-text">周边好去处
                <small class="package-text__small">周边特色好玩景点</small>
            </span>
            <a class="package-more" href="<%=request.getContextPath()  %>/web/v1/activity/query.html?type=SPOT">更多&gt;&gt;</a>
        </div>
        <div class="package__body index-grid">
        	<c:forEach items="${spotlist }" var="spot" varStatus="x">
            <div class="index-grid__span-2${x.count == 4 ? '--last' : ''}">
                <a title="${spot.name }" href="<%=request.getContextPath()  %>/web/v1/activity/detail.html?type=SPOT&routeId=${spot.activityPlanId }" title="" class="index-spot">
                    <div class="index-spot__img"><img src="${staticServerPath1 }/images/${spot.imageURL }" alt=""></div>
                    <div class="index-spot__title">${spot.name }</div>
                    <div class="index-spot__desc">
                         <p class="font-1x">${fn:substring(spot.description, 0, 32) }${fn:length(spot.description) > 32 ? "..." : ""}</p>
                    </div>
                </a>
            </div>
            </c:forEach>
        </div>
    </div>
    <div class="content__topic">
        <div class="package__title package-icon--topic relative">
            <span class="package-text">主题自驾
                <small class="package-text__small">为你打造精品主题自驾</small>
            </span>
            <a class="package-more" href="<%=request.getContextPath()  %>/web/v1/topic/index.html">更多&gt;&gt;</a>
        </div>
        <div class="package__body index-grid">
        	<div class="topic-bg clearfix ptm pbm">
        	<c:forEach items="${topiclist }" var="topic" varStatus="x">
            <div class="index-grid__span-2${x.count == 4 ? '--last' : ''}">
                <a href="http://localhost:8080/tour-guide/web/v1/topic/detail.html?topicId=${topic.topicId }" title=""  class="index-topic">
                    <div class="index-topic__img"><img src="${staticServerPath1 }/images/${topic.imageUrl }" alt=""></div>
                    <div class="index-topic__title">
                        <div class="topic-title">
                        	<div class="topic-title__title"><c:out value="${topic.name }" escapeXml="false"/></div>
                        </div>
                    </div>
                </a>
            </div>
            </c:forEach>
            </div>
        </div>
    </div>
    
	<div class="content__advantage">
	    <div class="package__title package-icon--4reason">
	        <span class="package-text">选择我们的4大理由</span>
	    </div>
	    <div class="package__body index-grid">
	        <div class="advantage span-3">
	            <img src="${staticServerPath1 }/images/index/advance01.png" class="advantage__img">
	            <p class="advantage__title">【精品路线】</p>
	            <p class="advantage__content">亲自丈量，专业勘测，为您精心挑选出当季最适合自驾的路线。</p>
	        </div>
	        <div class="advantage span-3">
	            <img src="${staticServerPath1 }/images/index/advance02.png" class="advantage__img">
	            <p class="advantage__title">【最全攻略】</p>
	            <p class="advantage__content"> 您不用满世界搜索旅行攻略了，“兜蜂网”已经为您备好路书，随时准备出发。</p>
	        </div>
	        <div class="advantage span-3">
	            <img src="${staticServerPath1 }/images/index/advance03.png" class="advantage__img">
	            <p class="advantage__title">【贴心客服】</p>
	            <p class="advantage__content">“兜蜂网”就是您的私人导游兼小秘书，旅行间遇到的问题，别犹豫，告诉小秘，她会帮您解决。</p>
	        </div>
	        <div class="advantage span-3-last">
	            <img src="${staticServerPath1 }/images/index/advance04.png" class="advantage__img">
	            <p class="advantage__title">【完善服务】</p>
	            <p class="advantage__content">酒店、门票一键式搞定，让旅行回归最本质享受。</p>
	        </div>
	    </div>
	</div>

    <div class="content__foobanner">
        <div class="foot-banner">
            <img src="${staticServerPath1 }/images/index/bottom-banner.png" class="foot-banner__img">
        </div>
    </div>
</div>