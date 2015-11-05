<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<div class="header">
    <div class="top">
        <div class="top_logo"><a href="" class="top_logo--link"></a></div>
        <div class="top_login">
        	<c:choose>
        		<c:when test="${empty loginUser }">
	        		<ul class="login">
		           		<li><a href="<%=request.getContextPath()  %>/web/v1/user/signup.html" class="login_btn--default">注册</a></li>
		                <li><a href="<%=request.getContextPath()  %>/web/v1/user/signin.html" class="login_btn--active">登陆</a></li>
		                <li><a href="" class="login_btn--default">关于我们</a></li>
		            </ul>
        		</c:when>
        		<c:otherwise>
        			<ul class="login">    			
	        			<li>
	        				<span>Hi,</span><span class="mlm mrm">${loginUser.name }</span><span><a href="<%=request.getContextPath()  %>/web/v1/user/signout.html">退出</a></span>
	        			</li>
	        			<li><a href="" class="login_btn--default">关于我们</a></li>
        			</ul>
        		</c:otherwise>
        	</c:choose>
        </div>
    </div>
</div>