<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript">

function printMsg(name, msg) {
	var c = $('*[ui-valid-msg=' + name + ']');
	c.empty();
	c.append('<small>'+msg+'</small>');
}

function clearMsg(name) {
	var c = $('*[ui-valid-msg=' + name + ']');
	c.empty();
}


function checkPwdStrength(string, fn) {
	if (string.length >= 6) {
		if (/[a-zA-Z]+/.test(string) && /[0-9]+/.test(string)
				&& /\W+\D+/.test(string)) {
			fn(1);
		} else if (/[a-zA-Z]+/.test(string) || /[0-9]+/.test(string)
				|| /\W+\D+/.test(string)) {
			if (/[a-zA-Z]+/.test(string) && /[0-9]+/.test(string)) {
				fn(-1);
			} else if (/\[a-zA-Z]+/.test(string) && /\W+\D+/.test(string)) {
				fn(-1);
			} else if (/[0-9]+/.test(string) && /\W+\D+/.test(string)) {
				fn(-1);
			} else {
				fn(0);
			}
		}
	} else {
		fn(null);
	}
}

function checkPwdLength(string, print) {
	var flag = false;

	if (string.length >= 6) {
		flag = true;
	}

	if (print != undefined)
		print(flag);

	return flag;
}

function checkPwdSame() {
	var password = $('input[name=password]').val(), repassword = $(
			'input[name=repassword]').val();

	if (password != repassword) {
		return false;
	}

	return true;
}

function bindCheckPwd(o) {

	o.keyup(function() {
		var self = $(this), val = self.val(), pwdLevel = self.parent().find(
				'*[ui-pwd]');

		checkPwdStrength(val, function(num) {
			if (pwdLevel.length == 0) {
				return;
			} else {
				pwdLevel.find('*[ui-pwd-level]').removeClass('active');
			}

			if (num == 1) {
				pwdLevel.find('*[ui-pwd-level]').addClass('active');
			} else if (num == -1) {
				pwdLevel.find('*[ui-pwd-level=weak]').addClass('active');
				pwdLevel.find('*[ui-pwd-level=mid]').addClass('active');
			} else {
				pwdLevel.find('*[ui-pwd-level=weak]').addClass('active');
			}
		});

		checkPwdLength(val, function(flag) {
			!flag ? printMsg(self.attr('name'), '*必须填写,长度不少6位')
					: printMsg(self.attr('name'), '');
		})
	});

	o.blur(function() {
		if (!checkPwdSame()) {
			printMsg('password', '*密码必须一致');
			printMsg('repassword', '*密码必须一致');
		} else {
			clearMsg('password');
			clearMsg('repassword');
		}
	});

}

$(function(){
	var oldpassword = $('input[name=oldpassword]'),
		password = $('input[name=password]'),
		repassword = $('input[name=repassword]');
	
	bindCheckPwd(password);
	bindCheckPwd(repassword);
	
	$('#reset-psword').click(function(){
		if(!checkPwdSame() || !checkPwdLength(password.val()) || !checkPwdLength(repassword.val())){
			password.trigger('keyup');
			repassword.trigger('keyup');
			return;
		}
		
		if(!checkPwdSame()){
			password.trigger('blur');
			repassword.trigger('blur');
			return;
		}
		
		$.ajax({
			url : '<%=request.getContextPath()  %>/web/v1/my/reset-psword.html',
			async : false,
			method : 'POST',
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			data : {
				'oldpassword' : oldpassword.val(), 
				'password' : password.val(), 
				'repassword' : repassword.val()
			},
			success : function(resp) {
				var o = $.parseJSON(resp),flag = o.flag,msg = o.msg;
				if(flag){
					printMsg('oldpassword', '*修改密码成功');
					return;
				}
				
				if(msg == '1009'){
					printMsg('oldpassword', '*旧密码错误');
				}
			},
			error : function(resp) {
				alert('网络出现问题，刷新页面重新尝试！');
			}
		});
	});
});

</script>

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
                        <li><a href="">修改密码</a></li>
                    </ol>
                </div>
                <span class="rightbody__title">&nbsp;修改密码</span>
                <div class="rightbody__grid">
                	<form action="" class="form" method="post">
                        <div class="row mtl">
                            <div class="span-5">
                                <span class="form__label">旧密码：</span>
                            </div>
                            <div class="span-3">
                                <input class="form__input" type="password" placeholder="输入你的旧密码" name="oldpassword"/>
                            </div>
                            <div class="span-4-last"><span class="msg--error" ui-valid-msg="oldpassword"></span></div>
                        </div>
                        
                        <div class="row mtm">
                           <div class="span-5">
                                <span class="form__label">新密码：</span>
                            </div>
                            <div class="span-3">
                                <input class="form__input" type="password" placeholder="6-20位新密码" name="password"/>
                                <div class="pwd-level" ui-pwd="">
                                    <span class="pwd-level__item pwd-level__span-3" ui-pwd-level="weak">弱
                                    </span><span class="pwd-level__item pwd-level__span-3" ui-pwd-level="mid">中
                                    </span><span class="pwd-level__item pwd-level__span-3--last" ui-pwd-level="high">强
                                    </span>
                                </div>
                            </div>
                            <div class="span-4-last"><span class="msg--error" ui-valid-msg="password"></span></div>
                        </div>

                        <div class="row mtm">
                           <div class="span-5">
                                <span class="form__label">确认新密码：</span>
                            </div>
                            <div class="span-3">
                                <input class="form__input" type="password" placeholder="再次输入6-20位新密码" name="repassword"/>
                                <div class="pwd-level" ui-pwd="">
                                    <span class="pwd-level__item pwd-level__span-3" ui-pwd-level="weak">弱
                                    </span><span class="pwd-level__item pwd-level__span-3" ui-pwd-level="mid">中
                                    </span><span class="pwd-level__item pwd-level__span-3--last" ui-pwd-level="high">强
                                    </span>
                                </div>
                            </div>
                            <div class="span-4-last"><span class="msg--error" ui-valid-msg="repassword"></span></div>
                        </div>

                        <div class="row">
                            <div class="span-5">&nbsp;</div>
                            <div class="span-3">
                                <input type="button" value="修改" class="btn btn-warning" id="reset-psword">
                            </div>
                            <div class="span-4-last"></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
	</div>