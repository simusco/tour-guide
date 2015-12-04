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

	var f = false;
	o.keyup(function() {
		var self = $(this), val = self.val(), pwdLevel = self.parent().find(
				'*[ui-pwd]');
	
		var flag = checkPwdLength(val, function(flag) {
			!flag ? printMsg(self.attr('name'), '*必须填写,长度不少6位')
					: printMsg(self.attr('name'), '');
		});
		
		if(flag){
			checkPwdStrength(val, function(num) {
				if (pwdLevel.length == 0) {
					pwdLevel.find('*[ui-pwd-level]').removeClass('active');
					return;
				}

				if (num == 1) {
					pwdLevel.find('*[ui-pwd-level]').addClass('active');
				} else if (num == -1) {
					pwdLevel.find('*[ui-pwd-level=weak]').addClass('active');
					pwdLevel.find('*[ui-pwd-level=mid]').addClass('active');
				} else {
					pwdLevel.find('*[ui-pwd-level=weak]').addClass('active');
				}
				
				f = true;
			});
		}
	});

	o.blur(function() {
		if(!f) return;
		
		clearMsg('password');
		clearMsg('repassword');
		
		if (!checkPwdSame()) {
			printMsg('password', '*密码必须一致');
			printMsg('repassword', '*密码必须一致');
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
		if(!checkPwdLength(password.val()) || !checkPwdLength(repassword.val()) || !checkPwdSame()){
			password.trigger('keyup');
			repassword.trigger('keyup');
			return;
		}
		
		$.ajax({
			url : '<%=request.getContextPath()  %>/web/v1/user/reset-psword.html',
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
				}else{
					printMsg('oldpassword', msg);
				}
			},
			error : function(resp) {
				alert('网络出现问题，刷新页面重新尝试！');
			}
		});
	});
});

</script>

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

                <div class="row mtl">
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
