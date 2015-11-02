<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!doctype html>
<html>
	<head>
		<tiles:insertAttribute name="header"/>
	</head>
	
	<body>
		<tiles:insertAttribute name="topbar"/>
		<tiles:insertAttribute name="navbar"/>
		
		<!-- different -->
		<tiles:insertAttribute name="content"/>
		
		<!-- footer -->
		<tiles:insertAttribute name="footer"/>
		<tiles:insertAttribute name="analytics"/>
	</body>
</html>