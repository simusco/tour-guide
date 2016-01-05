<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript">
	
	$.extend({
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
		query:{
			bind:function(){
				function clear(parent, ename){
					$('*['+ename+']', parent).each(function(){
						$(this).removeClass('tag--stress');
						$(this).removeClass('active');
						$(this).removeAttr(ename+'-selected');
						$(this).addClass('tag--default');						
					});
				}
				
				function handle(ename){
					$('*['+ename+']').each(function(){
						$(this).click(function(){
							var parent = $(this).parent().parent();
							clear(parent,ename);
							
							$(this).attr(ename+'-selected','true');
							if(ename == 'ui-tag-query'){
								$('*['+ename+'-selected=true]').addClass('tag--stress');
							}else{								
								$('*['+ename+'-selected=true]').addClass('active');
							}
							
							$.query.exec(1);
						});
					});
				}
				
				handle('ui-tag-query');
				handle('ui-tag-order');
			},
			exec:function(page){
				var tags = new Array();
				$('*[ui-tag-query-selected=true]').each(function(){
					var self = $(this);
					tags.push(self.attr('ui-tag-query'));
				});
				
				var orderBy = null;
				$('*[ui-tag-order-selected=true]').each(function(){
					var self = $(this);
					orderBy = self.attr('ui-tag-order');
				});
				
				var tt = [];
				for(var i=0;i<tags.length;i++){
					if(tags[i] != '全部'){
						tt.push(tags[i]);
					}
				}
				tags = tt;
				
				$.query.displayCond(tags);
				
				var tagstr = '';
				for(var x = 0;x<tags.length;x++){
					tagstr += $.param({'tags' : tags[x]});
					tagstr += '&';
				}
				tagstr += $.param({type:'${type}','order': orderBy, 'orderType' : '-1' , 'page' : page, count : 15});
				
				$('*[ui-route-content]').each(function(){
					var self = $(this);
					var url = self.attr('ui-route-content');
					
					$.load.page(url+'?'+tagstr, {}, function(resp){
						self.empty();
						self.append(resp);
					});
				});
			},
			displayCond:function(tags){
				$('*[ui-tag-cond]').each(function(){
					$(this).parent().remove();
				});
				
				for(var i=0;i<tags.length;i++){
					var tag = tags[i];
					
					var a = $('<a href="javascript:$.doNothing();" style="margin-right:5px;">'+tag+'</a>'),span=null;
						a.addClass('tag--removeable');
						a.attr('ui-tag-cond','');
						span = $('<span></span>').append(a);
						
					a.click(function(){
						var tag = $(this).html();
						$.query.removeCond($(this));
						
						$('*[ui-tag-query]').each(function(){
							if($(this).html() == tag){
								$(this).parent().parent().find('a').each(function(){
									if($(this).html() == '全部'){
										$(this).trigger('click');
									}
								});
							}
						});
					});
					
					$('*[ui-cond]').append(span);
				}
			},
			removeCond:function(obj){
				$(obj).parent().remove();
			}
		},
		doNothing : function(){}
	});
	
	$(function(){
		$.query.bind();
		$.query.exec(1);
	});

</script>

<div class="content mtl">
	<div class="route-filter">
	    <div class="route-filter__cond" ui-cond="">
	        <span class="title">条件：</span><span>
	        	<a href="javascript:$.doNothing()" class="tag tag--selected" style="margin-right:5px;">省份：广东</a>
	        </span><span>
	        	<a href="javascript:$.doNothing()" class="tag tag--selected">城市：深圳</a>
	        </span>
	    </div>
	    
	    <c:forEach items="${tagTypeList }" var="tagType">
	    	<c:if test="${tagType.type == 'QUERY' }">
	    		<div class="route-filter__tags">
	    			<div class="query-con clearfix">
		    			<div class="query-con__title left">
		                    <span class="font-3x font-color-grey-3" style="line-height:46px">${tagType.tag }：</span>
		                </div>
		                <div class="query-con__content left" style="width:1070px;">
		                	<ul class="unstyled-list lh36 pln mln pbn ptn mts mbs">
					        <c:forEach items="${tagList }" var="tag">
					        	<c:if test="${tag.parentId ==  tagType.tagId}">
					        		<li class="inline"><a href="javascript:$.doNothing()" 
					        				class="tag ${tag.active == '1' ? 'tag--default' : 'tag--stress' }"
					        				ui-tag-query="${tag.tag }"
					        				${tag.active == '1' ? '' : 'ui-tag-query-selected="true"' }>${tag.tag }</a></li>
					        	</c:if>
					        </c:forEach>
					        </ul>
						</div>
			        </div>
			    </div>
	    	</c:if>
	    </c:forEach>
	    <!-- 
	    <div class="route-filter_result">
	        <span class="tag tag--out">500</span>个结果
	    </div>
	     -->
	</div>
	
	<div class="route-order">
		<c:forEach items="${tagTypeList }" var="tagType">
	    	<c:if test="${tagType.type == 'ORDER' }">
	    		<div class="route-order__tags">
			        <span class="title">${tagType.tag }：</span>
			        <c:forEach items="${tagList }" var="tag">
			        	<c:if test="${tag.parentId ==  tagType.tagId}">
			        		<span>
			        			<a	href="javascript:$.doNothing()" 
			        				class="tag tag--divider ${tag.active == '1' ? '' : 'active' }" 
			        				ui-tag-order="${tag.value }"
			        				${tag.active == '1' ? '' : 'ui-tag-order-selected="true"' }>
			        				${tag.tag }
			        			</a>
			        		</span>
			        	</c:if>
			        </c:forEach>
			    </div>
	    	</c:if>
	    </c:forEach>
	</div>
	
	<section ui-route-content="<%=request.getContextPath()  %>/web/v1/activity/query/route.html"></section>
</div>