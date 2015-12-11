<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!doctype html>
<html>
<head>
<tiles:insertAttribute name="header" />
<script type="text/javascript">
	$(function() {
		var active = '<tiles:getAsString name="active"/>';
		$('*[menu-item=' + active + ']').addClass('slide-menu__item--active');
	});
</script>
</head>

<body>
	<tiles:insertAttribute name="topbar" />
	<tiles:insertAttribute name="navbar" />

	<div class="content">
		<div class="content__header grid8">
			<div class="content-header__left grid8__span2">
				<div class="font-5x bold lh50 bn bn-b-1">关于我们</div>
			</div>
			<div class="content-header__right grid8__span6-last">
				<div class="font-5x bold lh50 bn bn-b-1">&nbsp;</div>
			</div>
		</div>
		<div class="content__body grid8">
			<div class="content-body__left grid8__span2 slide-menu clearfix">
				<a href="<%=request.getContextPath()  %>/web/v1/help/about.html"
					class="block lh50 strech-full font-3x slide-menu__item unstyled-link" menu-item="about"><span
					class="pll">关于我们</span></a> <a href="<%=request.getContextPath()  %>/web/v1/help/contactus.html"
					class="block lh50 strech-full font-3x slide-menu__item unstyled-link" menu-item="contactus"><span
					class="pll">联系我们</span></a> <a href="<%=request.getContextPath()  %>/web/v1/help/joinus.html"
					class="block lh50 strech-full font-3x slide-menu__item unstyled-link" menu-item="joinus"><span
					class="pll">加入我们</span></a> <a href="<%=request.getContextPath()  %>/web/v1/help/term.html"
					class="block lh50 strech-full font-3x slide-menu__item unstyled-link" menu-item="term"><span
					class="pll">服务条款</span></a> <a href="<%=request.getContextPath()  %>/web/v1/help/help.html"
					class="block lh50 strech-full font-3x slide-menu__item unstyled-link" menu-item="help"><span
					class="pll">帮助中心</span></a>
			</div>
			<div class="content-body__right grid8__span6-last">
				<tiles:insertAttribute name="content" />
			</div>
		</div>
	</div>

	<tiles:insertAttribute name="footer" />
	<tiles:insertAttribute name="analytics" />
</body>
</html>