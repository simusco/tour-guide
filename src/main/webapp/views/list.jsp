<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

 <div class="container">
   	<c:forEach items="${activityPlanList.list }" var="activityPlan">
       <div class="row route">
           <div class="col-xs-12 col-md-6 route-image">
               <a href="detail.html">
                   <img src="<%=request.getContextPath()  %>/${activityPlan.imageURL}" alt="" class="max-width-fillfull">
               </a>
           </div>
           <div class="col-xs-12 col-md-6 route-desc">
               <div class="row">
                   <div class="col-xs-12 col-sm-12 col-md-12"><h3><a href="detail.html">${activityPlan.name }</a></h3></div>
               </div>
               <div class="row border-l-b-dashed">
                   <div class="col-xs-12 col-sm-12 col-md-12"><p>${activityPlan.description }</p></div>
               </div>
               <div class="row">
                   <div class="col-xs-12 col-sm-12 col-md-12">
                       <div class="margin-t-10">
                           <dl class="dl-horizontal dl-horizontal-fixed">
                               <dt>价格：</dt>
                               <dd>
                                   <strong class="value-color-def">￥${activityPlan.price }</strong>
                               </dd>
                           </dl>
                           <dl class="dl-horizontal dl-horizontal-fixed">
                               <dt>已经售出：</dt>
                               <dd>
                                   <strong class="value-color-def">${activityPlan.hasSaled }</strong>
                               </dd>
                           </dl>
                           <dl class="dl-horizontal dl-horizontal-fixed">
                               <dt>行程天数：</dt>
                               <dd>
                                   <strong class="value-color-def">${activityPlan.takeTime }</strong>
                               </dd>
                           </dl>
                           <dl class="dl-horizontal dl-horizontal-fixed">
                               <dt>主题特色：</dt>
                               <dd>
                                   <c:out value="${activityPlan.topic }" escapeXml="false"/>
                               </dd>
                           </dl>
                           <dl class="dl-horizontal dl-horizontal-fixed">
                               <dt>费用包含：</dt>
                               <dd>
                               	<c:out value="${activityPlan.expInclusive }" escapeXml="false"/>
                               </dd>
                           </dl>
                       </div>
                   </div>
               </div>
           </div>
       </div>
	</c:forEach>
</div>

<div class="pagebar margin-t-30">
    <div class="container">
        <div class="col-md-12">
            <tags:pager
				pagerRange="6" 
			   	pageSize="10" 
			   	totalPage="${activityPlanList.totalPage }" 
			   	curIndex="${activityPlanList.currPage}"/>
        </div>
    </div>
</div>