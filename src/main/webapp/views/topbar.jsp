<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript">
$(function(){
	
	$('*[ui-pop-menu]').mouseover(function(){
	     var self = $(this);
	     var popMenuId = self.attr('ui-pop-menu');
	     var popMenu = $('div[pop-menu='+popMenuId+']');
	
	     popMenu.css({'display' : 'block'});
	}).mouseout(function(){
		var self = $(this);
	    var popMenuId = self.attr('ui-pop-menu');
	    var popMenu = $('div[pop-menu='+popMenuId+']');
	
	    popMenu.css({'display' : 'none'});
	});

});
</script>

<div class="header">
    <div class="header__site-nav">
            
        <div class="site-nav">
                <div class="site-nav__left">
                   <span class="site-nav__desc">你好，欢迎来到兜风旅游梦想世界！</span>
                </div>
                <div class="site-nav__right">
                	<c:choose>
		        		<c:when test="${empty loginUser }">
				            <ul class="login">
		                        <li><a href="<%=request.getContextPath()  %>/web/v1/user/signin.html" class="login__btn login__btn--active">会员登陆</a></li>
		                        <li><span class="login__btn--pipe">|</span></li>
		                        <li><a href="<%=request.getContextPath()  %>/web/v1/user/signup.html" class="login__btn login__btn--default">免费注册</a></li>
		                        <li><span class="login__btn--pipe">|</span></li>
		                        <li><a href="<%=request.getContextPath()  %>/web/v1/help/about.html" class="login__btn login__btn--default">关于我们</a></li>
		                    </ul>
		        		</c:when>
		        		<c:otherwise>
		        			<ul class="login">
		                        <li>hi,${loginUser.name }<a href="<%=request.getContextPath()  %>/web/v1/user/signout.html" class="login__btn login__btn--active">退出</a></li>
		                        <li><span class="login__btn--pipe">|</span></li>
		                        <li ui-pop-menu="1001">
		                           <a href="<%=request.getContextPath()  %>/web/v1/my/order/unpay.html" class="login__btn login__btn--default pop-menu-d">我的订单<span class="icon-angle-down bold"></span></a>
			                       <div class="pop-menu clearfix"  pop-menu="1001">
				                       <a href="<%=request.getContextPath()  %>/web/v1/my/favorite.html" class="pop-menu__item">我的收藏</a>
				                       <a href="<%=request.getContextPath()  %>/web/v1/user/reset-psword.html" class="pop-menu__item">修改密码</a>
				                       <a href="<%=request.getContextPath()  %>/web/v1/user/modify-profile.html" class="pop-menu__item">修改资料</a>
				                   </div>
		                        </li>
		                        <li><span class="login__btn--pipe">|</span></li>
		                        <li><a href="<%=request.getContextPath()  %>/web/v1/help/about.html" class="login__btn login__btn--default">关注我们</a></li>
		                    </ul>
		        		</c:otherwise>
		        	</c:choose>
                </div>
        </div>
    </div>
    
    <div class="header__top">
            <div class="top">
                <div class="top_logo"><a href="<%=request.getContextPath()  %>" class="top_logo--link"></a></div>
                <div class="top_login"></div>
            </div>
    </div>
</div>