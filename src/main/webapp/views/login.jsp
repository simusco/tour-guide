<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<link rel="stylesheet" href="${staticServerPath1 }/styles/pages/reset-psword.css">
<style type="text/css">

.pop-window{
	position: fixed;	
	top:50%;
	left: 50%;
	margin-top:-200px;
	margin-left:-210px;
	z-index: 1000;
}

.container--login {
  border: 1px solid #dfdfdf;
  background-color: #fff;
  width: 420px;
}

.toolbar {
  background-color: #49cbcd;
  height: 45px;
  line-height: 45px;
}

.toolbar__title {
  font-size: 18px;
  font-weight: 700;
  color: #fff;
}

.toolbar-layout {
  max-width: 100%;
  margin-left: auto;
  margin-right: auto;
}

.toolbar-layout:after {
  content: " ";
  display: block;
  clear: both;
}

.toolbar-layout__title {
  width: 100%;
  float: left;
  margin-left: 0;
  margin-right: 0;
  text-align: center;
}

.input-icon {
  display: inline-block;
  vertical-align: middle;
  *vertical-align: auto;
  *zoom: 1;
  *display: inline;
  -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 4px;
  max-width: 280px;
  margin-left: auto;
  margin-right: auto;
  border: 1px solid #dfdfdf;
}

.input-icon:after {
  content: " ";
  display: block;
  clear: both;
}

.input-icon__icon {
  display: inline-block;
  vertical-align: middle;
  *vertical-align: auto;
  *zoom: 1;
  *display: inline;
  height: 30px;
  line-height: 30px;
  width: 30px;
  color: #999;
  text-align: center;
  font-size: 22px;
}

.input-icon__input {
  display: inline-block;
  vertical-align: middle;
  *vertical-align: auto;
  *zoom: 1;
  *display: inline;
  padding-left: 5px;
  outline: none;
  box-shadow: none;
  border: none;
  width: 240px;
  height: 20px;
  line-height: 22px;
  border-left: 1px solid #dfdfdf;
}

.btn {
  -moz-border-radius: 4px;
  -webkit-border-radius: 4px;
  border-radius: 4px;
  padding: 7px 10px;
  border: none;
}

.btn-warning {
  background-color: #f64d50;
  width: 100%;
  color: #fff;
}

</style>


<script type="text/javascript">
	function displayMsg(msg) {
		var c = $('*[ui-valid-msg=login-msg]');
		c.empty();
		c.append('<small>'+msg+'</small>');
	}
	
	function checkIsPhontNo(string) {
		return !!string
				.match(/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/);
	}
	
	function closeLogin(){
		$('body').find('*[ui-login]').remove();
	}
	
	$(function(){
		$('#signin').click(function(){
			var phoneNo = $('input[name=xphoneNo]').val();
				password = $('input[name=xpassword]').val();
				
			if(phoneNo == null || phoneNo == ''){
				displayMsg('*请输入登陆手机号!');
				return;
			}
			
			if(!checkIsPhontNo(phoneNo)){
				displayMsg('*登陆手机号不正确!');
				return;
			}
			
			if(password == null || password == ''){
				displayMsg('*请输入登陆密码!');
				return;
			}
			
			$.ajax({
				url : '<%=request.getContextPath()  %>/web/v1/user/signin.html',
				method : 'POST',
				contentType : "application/x-www-form-urlencoded; charset=UTF-8",
				data : {'phoneNo' : phoneNo, 'password' : password},
				success : function(resp) {
					var obj = $.parseJSON(resp),
						flag = obj.flag, 
						msg = obj.msg;
					
					if(flag){
						displayMsg('*登陆成功!');
						closeLogin();
					}else{
						displayMsg(msg);
					}
				},
				error : function(resp) {
					displayMsg('*网络出现问题，刷新页面重新尝试！');
				}
			});
		});
		
	});
	
</script>

<div class="container--login pop-window" ui-login>
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
                    <span class="msg--error" ui-valid-msg="login-msg"></span>
                </div>
            </div>
            <div class="row mts">
                <div class="span-2"></div>
                <div class="span-10-last">
                    <span class="input-icon">
                        <span class="input-icon__icon">
                            <i class="icon-user"></i>
                        </span><input type="text" class="input-icon__input" placeholder="请输入手机号码" name="xphoneNo">
                    </span>
                </div>
            </div>
            
            <div class="row mtl">
                <div class="span-2"></div>
                <div class="span-10-last">
                    <span class="input-icon">
                        <span class="input-icon__icon">
                            <i class="icon-lock"></i>
                        </span><input type="password" class="input-icon__input" placeholder="请输入密码" name="xpassword">
                    </span>
                </div>
            </div>

            <div class="row mts">
                <div class="span-2">&nbsp;</div>
                <div class="span-5">
                    <input type="checkbox"><span class="font-1x">七天内自动登录</span>
                </div>
                <div class="span-3 text-right font-1x">
                    <a href="">忘记密码?</a>
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
                <div class="span-8">还没有账号？<a href="<%=request.getContextPath()  %>/web/v1/user/signup.html">马上注册</a></div>
                <div class="span-2-last">&nbsp;</div>
            </div>
            <div class="row mtl"></div>
        </form>
    </div>
</div>

