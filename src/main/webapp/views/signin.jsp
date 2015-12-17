<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!doctype html>
<html>

<head>
<title>用户登陆</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="robots" content="nofollow" />
<meta name="viewport" content="width=device-width">

<link rel="icon" href="${staticServerPath1 }/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="${staticServerPath1 }/styles/pages/signin.css">
<link rel="stylesheet" href="<%=request.getContextPath()  %>/styles/font-awesome.min.css">
<!--[if IE 7]>
    <link rel="stylesheet" href="<%=request.getContextPath()  %>/styles/font-awesome-ie7.min.css">
<![endif]-->
<script src="${staticServerPath1 }/scripts/modernizr.js"></script>
<script src="${staticServerPath1 }/scripts/jquery.min.js"></script>
<script type="text/javascript">var contextPath = '<%=request.getContextPath()  %>';</script>
<!--[if lt IE 9]>
<script src="${staticServerPath1 }/scripts/html5shiv.js"></script>
<script src="${staticServerPath1 }/scripts/respond.min.js"></script>
<![endif]-->

<script type="text/javascript">
	
	function printMsg(msg) {
		var c = $('*[ui-valid-msg=msg]');
		c.empty();
		c.append(msg);
	}
	
	function checkIsPhontNo(string) {
		return !!string
				.match(/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/);
	}
	
	$(function(){
		
		$('#signin').click(function(){
			var phoneNo = $('input[name=phoneNo]').val();
				password = $('input[name=password]').val();
			
				
			if(phoneNo == null || phoneNo == ''){
				printMsg('<small>*请输入登陆手机号!</small>');
				return;
			}
			
			if(!checkIsPhontNo(phoneNo)){
				printMsg('<small>*登陆手机号不正确!</small>');
				return;
			}
			
			if(password == null || password == ''){
				printMsg('<small>*请输入登陆密码</small>');
				return;
			}
			
			$.ajax({
				url : '<%=request.getContextPath()  %>/web/v1/user/signin.html',
				method : 'POST',
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				data : {'phoneNo' : phoneNo, 'password' : password, 'rememberMe' : $('input[name=rememberMe]').val()},
				success : function(resp) {
					var obj = $.parseJSON(resp),
						flag = obj.flag, 
						msg = obj.msg;
					
					if(flag){
						printMsg('<small>*登陆成功!</small>');
						window.location.href='<%=request.getContextPath()  %>/web/v1/activity/index.html';
					}else{
						printMsg(msg);
					}
				},
				error : function(resp) {
					printMsg('<small>*网络出现问题，刷新页面重新尝试！</small>');
				}
			});
		});
		
		var l = getCookie('loginid');
		var p = getCookie('password');
		$('input[name=phoneNo]').val(l == null ? '' : l);
		$('input[name=password]').val(p == null ? '' : p);
	});
	
	function getCookie(name){ 
	    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
	 
	    if(arr=document.cookie.match(reg))
	        return unescape(arr[2]); 
	    else 
	        return null; 
	} 
	
	function switchActiveStyle(o){
		$('*[ui-enable-active=group1]').each(function(){
			$(this).removeClass('input-icon--active');
		});
		$(o).parent().addClass('input-icon--active');
	}
	
</script>

</head>
<body> 
    <div class="header">
        <div class="header__top">
            <div class="top">
                <div class="top_logo"><a href="<%=request.getContextPath()  %>" class="top_logo--link"></a></div>
                <div class="top_login"></div>
            </div>
        </div>
    </div>

    <div class="content">
        <div class="content__login">
            <div class="login">
                <div class="login__header">
                    <div class="toolbar toolbar-layout">
                        <span class="toolbar-layout__title">
                            <span class="toolbar__title">用户登陆</span>
                        </span>
                    </div>
                </div>
                <div class="login__body">
                    <form action="" class="form" method="post">
                        <div class="row mtl">
                            <div class="span-2"></div>
                            <div class="span-10-last">
                                <span class="msg--error" ui-valid-msg="msg"></span>
                            </div>
                        </div>
                        <div class="row mts">
                            <div class="span-2"></div>
                            <div class="span-10-last">
                                <span class="input-icon input-icon--active" ui-enable-active="group1">
                                    <span class="input-icon__icon">
                                        <i class="icon-user font-4x"></i>
                                    </span><input type="text" class="input-icon__input" placeholder="请输入手机号码" name="phoneNo" autocomplete="off" maxlength="24" onfocus="switchActiveStyle(this)">
                                </span>
                            </div>
                        </div>
                        
                        <div class="row mtl">
                            <div class="span-2"></div>
                            <div class="span-10-last">
                                <span class="input-icon" ui-enable-active="group1">
                                    <span class="input-icon__icon">
                                        <i class="icon-lock font-4x"></i>
                                    </span><input type="password" class="input-icon__input" placeholder="请输入密码" name="password" autocomplete="off" maxlength="16" onfocus="switchActiveStyle(this)">
                                </span>
                            </div>
                        </div>

                        <div class="row mts">
                            <div class="span-2">&nbsp;</div>
                            <div class="span-5">
                                <input type="checkbox" value="Y" checked="checked" name="rememberMe"><span class="font-1x">七天内自动登录</span>
                            </div>
                            <div class="span-3 text-right font-1x">
                                <a href="" class="font-1x link">忘记密码?</a>
                            </div>
                            <div class="span-2-last">&nbsp;</div>
                        </div>

                        <div class="row mtl">
                            <div class="span-2">&nbsp;</div>
                            <div class="span-8">
                                <input type="button" value="登陆" class="btn btn-warning" id="signin">
                            </div>
                            <div class="span-2-last">&nbsp;</div>
                        </div>

                        <div class="row mts">
                            <div class="span-2">&nbsp;</div>
                            <div class="span-8 font-1x">还没有账号？<a href="<%=request.getContextPath()  %>/web/v1/user/signup.html" class="link unstyled-link">马上注册</a></div>
                            <div class="span-2-last">&nbsp;</div>
                        </div>
                        <div class="row mtl"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
   
    <div class="footer--login">
        <div class="link-friendly">
            <span>友情链接：</span>
            <a href="http://www.ctrip.com" rel="nofollow">携程</a>
        	<a href="http://www.ly.com">同程</a>
        </div>
        <div class="copyright--login">Copyright ©2015 版权所有 深圳市墨马科技有限公司</div>
    </div>
</body>
</html>