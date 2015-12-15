<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<div class="navbar">
    <div class="navbar__wraper">
        <ul class="nav">
            <li class="nav__item"><a href="<%=request.getContextPath()  %>/web/v1/activity/index.html">首页</a></li>
            <li class="nav__item ${type == 'HOT' ? 'active' : '' }"><a href="<%=request.getContextPath()  %>/web/v1/activity/query.html?type=HOT">套餐</a></li>
            <li class="nav__item ${type == 'SPOT' ? 'active' : '' }"><a href="<%=request.getContextPath()  %>/web/v1/activity/query.html?type=SPOT">好去处</a></li>
            <li class="nav__item"><a href="<%=request.getContextPath()  %>/web/v1/topic/index.html">主题</a></li>
            <li class="nav__item"><a href="<%=request.getContextPath()  %>/web/v1/help/help.html">自驾指南</a></li>
        </ul>
    </div>
</div>