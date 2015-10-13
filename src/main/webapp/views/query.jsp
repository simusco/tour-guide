<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>智能旅游</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
    <link rel="stylesheet" href="<%=request.getContextPath()  %>/css/query.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()  %>/css/font-awesome.min.css">
    <!--[if IE 7]>
        <link rel="stylesheet" href="<%=request.getContextPath()  %>/css/font-awesome-ie7.min.css">
    <![endif]-->
     <script src="<%=request.getContextPath()  %>/js/jquery.min.js"></script>
    <!--[if lte IE 9]>
        <script src="<%=request.getContextPath()  %>/js/respond.min.js"></script>
        <script src="<%=request.getContextPath()  %>/js/html5shiv.min.js"></script>
    <![endif]-->
    
    
    <script type="text/javascript">

        $.extend({
        	tag : {
        		address:'',
        		serialize:function(array, op){
        			var form = $('<form style="display:none;"></form>');

                    for(var i=0;i<array.length;i++){
                        var o = array[i];
                        for(x in o){
                            var value = o[x];
                            var e = $('<input type="hidden" name="selectedTags['+i+'].'+x+'"/>');
                            e.val(value);

                            form.append(e);
                        }
                    }

                    for(m in op){
                        var value = op[m];
                        var e = $('<input type="hidden" name="'+m+'"/>');
                        e.val(value);

                        form.append(e);
                    }

                    return form.serialize();
        		},
        		getQueryValues:function(){
        			var tags = [];
        	    	$('*[ui-tag-query] > a.active').each(function(){
        	    		var li = $(this).parent(),
        	    		tagId = li.attr('tag-id'),
        	    		tagPid = li.attr('tag-pid'),
        	    		tagValue = li.attr('tag-value'),
        	    		tagName = li.attr('tag'),
        	    		tagType = li.attr('tag-type'),
        	    		tag = {'tagId':tagId,'parentId':tagPid,'value':tagValue,'tag':tagName,'type':tagType};
        	    		
        	    		tags.push(tag);
        	    	});
        	    	return tags;
        		},
        		getOrderBy:function(){
        			var orderBy = null;
        			$('*[ui-tag-orderby] > a.active').each(function(){
        				var li = $(this).parent();
        				orderBy = li.attr('tag-value');
        			});
        			return orderBy;
        		},
        		active : function(o){
                    o.parent().find('li').each(function(){
                    	$('> a', $(this)).removeClass('active');
                    });

                    o.find('> a').addClass('active');
                },
                query : function(tags, fn){
                	$.ajax({
        	    		url : "<%=request.getContextPath()  %>/list.action",
        	    		async : false,
        	    		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        	    		data : tags,
        	    		success : function(resp) {
        	    			fn(resp);
        	    		},
        	    		error : function(resp) {
        	    			
        	    		}
        	    	});
                },
                display : function(container, op){
                	//清空内容
                	container.empty();
                	
                	//排序获取
                	op.order = $.tag.getOrderBy();
                	//查询内容
        	    	var tags = $.tag.getQueryValues(),params = $.tag.serialize(tags, op);
        	    	//params = decodeURIComponent(params);
        	    	console.log(params);
        	    	
        	    	$.tag.query(params, function(data){
        	    		//展示内容
        	    		container.html(data);
        	    	});
                },
                displayQueryParams:function(){
                	var container = $('*[ui-query-params]'),tags = $.tag.getQueryValues();
                	
                	if($.tag.address != ''){
                		tags.push($.tag.address);
                	}
                	
                	//清空条件框内容
                	container.empty();
                	
                	//显示条件
                	container.append('<li class="tag-item-title">条件：</li>');
                	for(var i=0;i<tags.length;i++){
                		var tag = tags[i].tag;
                		
                		if(tag != '全部'){
                			var html = '<li class="tag-items-condition"><a href="javascript:$.doNothing();">'+tag+'</a></li>';
                			container.append(html);
                		}
                	}
                },
                refreshAddress:function(address, fn){
                	console.log('refreshAddress:'+address);
                	
                	$.ajax({
        	    		url : "<%=request.getContextPath()  %>/tags/address.action",
        	    		async : false,
        	    		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        	    		data : {"tag":address},
        	    		success : function(resp) {
        	    			fn(resp);
        	    		},
        	    		error : function(resp) {
        	    			
        	    		}
        	    	});
                }
        	},
        	doNothing : function(){}
        });
        
        $(function(){
        	var container = $('#activity_plan_content');
        	
            $('*[ui-tag-query]').each(function(){
	    		$(this).on('click', function(){
	    			$.tag.active($(this));
	    			$.tag.display(container, {});
	    			$.tag.displayQueryParams();
	    		});
	    	});
            
            $('*[ui-tag-orderby]').each(function(){
	    		$(this).on('click', function(){
	    			$.tag.active($(this));
	    			$.tag.display(container, {});
	    		});
	    	});
            
            $('*[ui-tag-address]').each(function(){
            	bindEventForAddress($(this), container);
	    	});
            
        });
        
        function bindEventForAddress(o, container){
        	o.on('click', function(){
    			var address = $(this).attr("tag"),li = $(this);
    			
    			$.tag.display(container, {"address" : address});
    			$.tag.refreshAddress(address, function(data){
    				var con = li.parent();
    				var x = $.trim(data);
    				
    				if(x != ''){
        				con.empty();
        				con.html(data);
        				
        				$('*[ui-tag-address]', con).each(function(){
        					bindEventForAddress($(this), container);
        				});
    				}
    				
    				$(con).find('a').each(function(){
    					if ($(this).html() == address){
    						$.tag.active($(this).parent());
    					}
    				});
    				
    			});
    		
    			$.tag.address = address;
    			$.tag.displayQueryParams();
    		});
        }
        
        function gotoPage(pageIndex){
        	var container = $('#activity_plan_content');
        	$.tag.display(container, {'currPage':pageIndex});
	    	$(window).scrollTop(0);
	    }
    </script>
    
</head>
<body>
    <div class="topbar">
        <div class="container">
            <div class="row">
                <div class="topbar-content col-xs-7 col-sm-5 col-md-4 col-lg-4 col-xs-push-5 col-sm-push-7 col-md-push-8 col-lg-push-8">
                    <ul class="login">
                        <li><a href="signout.html">注册</a></li>
                        <li><a href="login.html">登陆</a></li>
                        <li><a href="about.html">关注我们</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    
    <div class="navbar">
        <div class="container">
            <div class="row">
                <div class="col-xs-3 col-sm-3 col-md-3 navbar-item"><a href="<%=request.getContextPath()  %>/views/index.jsp">首页</a></div>
                <div class="col-xs-3 col-sm-3 col-md-3 navbar-item active"><a href="<%=request.getContextPath()  %>/query.action">线路</a></div>
                <div class="col-xs-3 col-sm-3 col-md-3 navbar-item"><a href="detail.html">工具</a></div>
                <div class="col-xs-3 col-sm-3 col-md-3 navbar-item"><a href="">帮助</a></div>
            </div>
        </div>
    </div>

    <div class="container tags">
        <div class="row tag-row">
            <div class="col-sm-12">
                <ul class="tag-items" ui-query-params="true">
                    <li class="tag-item-title">条件：</li>
                    <li class="tag-items-condition">
                        <a href="javascript:fn();">全部</a>
                    </li>
                </ul>
            </div>
        </div>
        
        <c:forEach items="${tags }" var="tagMap" varStatus="vs">
			<c:if test="${tagMap.key.type == 'ADDRESS'}">
	        <div class="row tag-row tag-address">
	            <div class="col-sm-12">
	                <ul class="tag-items">
	                	<li class="tag-item-title">${tagMap.key.tag }：</li>
	                	
	                    <c:forEach items="${tagMap.value}" var="tag">
	                    	<li
	                		<c:if test="${tag.active }">active="true"</c:if>
								tag-id="${tag.tagId }"
								tag-pid="${tag.parentId }"
								tag-type="${tag.type }"
								tag-value="${tag.value }"
								tag="${tag.tag }"
								ui-tag-address="true">
								<a href="javascript:$.doNothing();" <c:if test="${tag.active }">class="active"</c:if>>${tag.tag }</a>
							</li>
	                	</c:forEach>
	                </ul>
	            </div>
	        </div>
	        </c:if>
        </c:forEach>

		<c:forEach items="${tags }" var="tagMap" varStatus="vs">
			<c:if test="${tagMap.key.type == 'QUERY'}">
	        <div class="row tag-row query-row">
	            <div class="col-sm-12">
	                <ul class="tag-items">
	                	<li class="tag-item-title">${tagMap.key.tag }：</li>
	                	
	                    <c:forEach items="${tagMap.value}" var="tag">
	                    	<li
								tag-id="${tag.tagId }"
								tag-pid="${tag.parentId }"
								tag-type="${tag.type }"
								tag-value="${tag.value }"
								tag="${tag.tag }"
								ui-tag-query="true">
								<a href="javascript:$.doNothing();" <c:if test="${tag.active }">class="active"</c:if>>${tag.tag }</a>
							</li>
	                	</c:forEach>
	                </ul>
	            </div>
	        </div>
	        </c:if>
        </c:forEach>

        <div class="row tag-row">
            <div class="col-sm-12">
                <h4><strong class="value-color-def">500</strong>个结果</h4>
            </div>
        </div>

		<c:forEach items="${tags }" var="tagMap" varStatus="vs">
			<c:if test="${tagMap.key.type == 'ORDER'}">
	        <div class="row tag-row order-by">
	            <div class="col-sm-12">
	                <ul class="tag-items">
	                	<li class="tag-item-title">${tagMap.key.tag }：</li>
	                	
	                    <c:forEach items="${tagMap.value}" var="tag">
	                    	<li
	                		<c:if test="${tag.active }">active="true"</c:if>
								tag-id="${tag.tagId }"
								tag-pid="${tag.parentId }"
								tag-type="${tag.type }"
								tag-value="${tag.value }"
								tag="${tag.tag }"
								ui-tag-orderby="true">
								<a href="javascript:$.doNothing();" <c:if test="${tag.active }">class="active"</c:if>>${tag.tag }</a>
							</li>
	                	</c:forEach>
	                </ul>
	            </div>
	        </div>
	        </c:if>
        </c:forEach>
    </div>

    <div class="container" id="activity_plan_content">
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
    </div>

    <div class="container margin-t-30">
        <div class="row">
            <img src="<%=request.getContextPath()  %>/images/common/card-001.jpg" class="max-width-fillfull" alt="">
        </div>
    </div>

    <div class="footer">
        <div class="link-us">
            <ul class="link">
                <li><a href="">关于我们</a></li>
                <li><a href="">加入我们</a></li>
                <li><a href="">联系我们</a></li>
            </ul>
            <ul class="us">
                <li><a href="">友情链接</a></li>
                <li><a href="">途牛</a></li>
                <li><a href="">去哪儿</a></li>
            </ul>
        </div>
        <div>
            <div class="copyright">
                2011-2015 wwww.trip.com All Right Reserved 备案号:124838273
            </div>
        </div>
    </div>

</body>
</html>