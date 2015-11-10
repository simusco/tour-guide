<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<div class="content mtl">
        <div class="content__leftslider profile-grid__span-3">
            <div class="slide-menu last head">
                <div class="slide-menu__headicon">
                    <div class="headicon">
                        <img src="images/profile/headicon.png">
                        <p>${loginUser.name }</p>
                    </div>
                </div>
            </div>
            <div class="slide-menu mtm">
                <span class="slide-menu__title">我的订单</span>
                <div class="slide-menu__submenu">
                    <ul class="menu">
                        <li><a href="<%=request.getContextPath()  %>/web/v1/my/unpay.html" class="menu__item">未支付</a></li>
                        <li><a href="<%=request.getContextPath()  %>/web/v1/my/payed.html" class="menu__item">已支付</a></li>
                    </ul>
                </div>
            </div>

            <div class="slide-menu">
                <span class="slide-menu__title">我的收藏</span>
                <div class="slide-menu__submenu">
                    <ul class="menu">
                        <li>
                            <a href="" class="menu__item">收藏
                                <span class="menu-item__arrow">></span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="slide-menu last">
                <span class="slide-menu__title">我的资料</span>
                <div class="slide-menu__submenu">
                    <ul class="menu">
                        <li>
                            <a href="" class="menu__item">修改资料<span class="menu-item__arrow">></span></a>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()  %>/web/v1/my/reset-psword.html" class="menu__item active">修改密码<span class="menu-item__arrow">></span></a>
                        </li>
                        <li>
                            <a href="" class="menu__item">退出登陆<span class="menu-item__arrow">></span></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="content__rightbody profile-grid__span-13--last">
            <div class="rightbody">
                <div class="rightbody__bread-crumb">
                    <ol class="bread-crumb">
                        <li><a href="">个人中心 ></a></li>
                        <li><a href="">未付款</a></li>
                    </ol>
                </div>
                <span class="rightbody__title">&nbsp;修改密码</span>
                <div class="rightbody__grid">
                	<form action="" class="form" method="post">
                        <div class="row mtl">
                            <div class="span-5">
                                <span class="form__label">旧密码：</span>
                            </div>
                            <div class="span-7-last">
                                <input class="form__control" type="text" placeholder="输入你的旧密码">
                            </div>
                        </div>
                        
                        <div class="row mtm">
                           <div class="span-5">
                                <span class="form__label">新密码：</span>
                            </div>
                            <div class="span-7-last">
                                <input class="form__control" type="password" placeholder="6-20位新密码">
                            </div>
                        </div>

                        <div class="row mtm">
                           <div class="span-5">
                                <span class="form__label">确认新密码：</span>
                            </div>
                            <div class="span-7-last">
                                <input class="form__control" type="password" placeholder="再次输入6-20位新密码">
                            </div>
                        </div>

                        <div class="row">
                            <div class="span-5">&nbsp;</div>
                            <div class="span-7-last">
                                <input type="button" value="保存" class="btn--login">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
	</div>