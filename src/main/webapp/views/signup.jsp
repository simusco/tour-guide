<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!doctype html>
<html>

<head>
<title>用户注册</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width">
<link rel="icon" href="<%=request.getContextPath()  %>/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="<%=request.getContextPath()  %>/styles/pages/signup.css">
<script src="<%=request.getContextPath()  %>/scripts/modernizr.js"></script>
<script src="<%=request.getContextPath()  %>/scripts/jquery.min.js"></script>
<script type="text/javascript">var contextPath = '<%=request.getContextPath()  %>';</script>
<script src="<%=request.getContextPath()  %>/scripts/web/singup.js"></script>
<!--[if lt IE 9]>
<script src="<%=request.getContextPath()  %>/scripts/html5shiv.js"></script>
<script src="<%=request.getContextPath()  %>/scripts/respond.min.js"></script>
<![endif]-->

<script type="text/javascript">
	
	$(function(){
		var loginId = $('input[name=loginId]'),
			name  = $('input[name=name]'),
			password = $('input[name=password]'),
			acode = $('input[name=acode]'),
			repassword = $('input[name=repassword]');
		
		bindCheckPwd(password);
		bindCheckPwd(repassword);
		bindCheckLoginId(loginId);
		bindCheckName(name);
		
		$('#signup').click(function(){
			if(!checkPwdSame() || !checkName() || !checkPwdLength(password.val()) || !checkPwdLength(repassword.val())){
				loginId.trigger('blur');
				name.trigger('keyup');
				password.trigger('keyup');
				repassword.trigger('keyup');
				return;
			}
			
			if(!checkPwdSame()){
				password.trigger('blur');
				repassword.trigger('blur');
				return;
			}
			
			//TODO 验证验证码是否正确
			
			$.ajax({
				url : '<%=request.getContextPath()  %>/web/v1/user/signup.html',
				async : false,
				method : 'POST',
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				data : {
					'loginId' : loginId.val(), 
					'name' : name.val(), 
					'password' : password.val(), 
					'acode' : acode.val(), 
					'repassword' : repassword.val()
				},
				success : function(resp) {
					var flag = $.parseJSON(resp).flag;
					if(flag){
						//redirect login.html
						alert(flag);
					}
				},
				error : function(resp) {
					alert('网络出现问题，刷新页面重新尝试！');
				}
			});
		});
	});
</script>

</head>

<body>
	<div class="header">
        <div class="top">
            <div class="top_logo"><a href="" class="top_logo--link"></a></div>
            <div class="top_login">
            </div>
        </div>
    </div>
    
    <div class="content">
        <div class="content__login">
            <div class="login">
                <div class="login__header">
                    <div class="toolbar toolbar-layout">
                        <span class="toolbar-layout__title">
                            <span class="toolbar__title">用户注册</span>
                        </span>
                    </div>
                </div>
                <div class="login__body">
                    <form action="<%=request.getContextPath()  %>/web/v1/user/signup.html" class="form" method="post">
                        <div class="row mts">
                            <div class="span-4">
                                <span class="form__label">手机：</span>
                            </div>
                            <div class="span-4">
                                <input class="form__input" type="text" name="loginId">
                            </div>
                            <div class="span-4-last">
                                <span class="msg--error" ui-valid-msg="loginId"></span>
                            </div>
                        </div>
                        
                        <div class="row mts">
                            <div class="span-4">
                                <span class="form__label">验证码：</span>
                            </div>
                            <div class="span-4">
                                <input class="form__input" type="text" style="width:70px" name="acode">
                                <input class="btn btn-default" type="button" value="获取验证码">
                            </div>
                            <div class="span-4-last">
                                <span class="msg--error"></span>
                            </div>
                        </div>

                        <div class="row mts">
                            <div class="span-4">
                                <span class="form__label">姓名：</span>
                            </div>
                            <div class="span-4">
                                <input class="form__input" type="text" name="name">
                            </div>
                            <div class="span-4-last">
                                <span class="msg--error" ui-valid-msg="name"></span>
                            </div>
                        </div>

                        <div class="row mts">
                            <div class="span-4">
                                <span class="form__label">密码：</span>
                            </div>
                            <div class="span-4">
                                <input class="form__input" type="password" name="password">
                                <div class="pwd-level" ui-pwd="">
                                    <span class="pwd-level__item pwd-level__span-3" ui-pwd-level="weak">弱
                                    </span><span class="pwd-level__item pwd-level__span-3" ui-pwd-level="mid">中
                                    </span><span class="pwd-level__item pwd-level__span-3--last" ui-pwd-level="high">强
                                    </span>
                                </div>
                            </div>
                            <div class="span-4-last">
                                <span class="msg--error" ui-valid-msg="password"></span>
                            </div>
                        </div>

                        <div class="row mts">
                            <div class="span-4">
                                <span class="form__label">确认密码：</span>
                            </div>
                            <div class="span-4">
                                <input class="form__input" type="password" name="repassword">
                                <div class="pwd-level" ui-pwd="">
                                    <span class="pwd-level__item pwd-level__span-3" ui-pwd-level="weak">弱
                                    </span><span class="pwd-level__item pwd-level__span-3" ui-pwd-level="mid">中
                                    </span><span class="pwd-level__item pwd-level__span-3--last" ui-pwd-level="high">强
                                    </span>
                                </div>
                            </div>
                            <div class="span-4-last">
                                <span class="msg--error" ui-valid-msg="repassword"></span>
                            </div>
                        </div>
                        
                        <div class="row mtl">
                            <div class="span-4">&nbsp;</div>
                            <div class="span-4">
                                <input type="button" value="注册" class="btn btn-warning" id="signup">
                            </div>
                            <div class="span-4-last"></div>
                        </div>
                        <div class="row">
                            <div class="span-4">&nbsp;</div>
                            <div class="span-4">
                            	已经有帐号，<a href="">直接登陆</a>
                            </div>
                            <div class="span-4-last">&nbsp;</div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
   
    <div class="footer--login">
        <div class="link-friendly">
            <span>友情链接：</span>
            <a href="">百度</a>
            <a href="">新浪</a>
        </div>
        <div class="copyright--login">Copyright 2003-2015 墨马科技公司版权所有</div>
    </div>
</body>
</html>