<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript">
$(function(){
	var createMonthSelect = function(){
		var year = $('#year').val();
		var month = $('#month').val();
		var day = $('#day').val();
		
		var drange = new Date(year,month,0).getDate();
		for(var i=1;i<=drange;i++){
			$('#day').append($('<option value="'+i+'">'+i+'</option>')	);
		}
		
		$('#day').val('${loginUser.brithDay}' == '' ? 
						new Date().getDate() : 
						'${loginUser.brithDay}');
	}
	
	$('#year, #month').change(createMonthSelect);
	createMonthSelect();
	
	$('input[ui-submit]').click(function(){
		var data = $('form[ui-form]').serialize();
		data = decodeURI(data);
		
		var form = {};
		var kvs = data.split('&');
		for(var i=0;i<kvs.length;i++){
			var kv = kvs[i].split('=');
			form[kv[0]] = kv[1];
		}
		
		data = JSON.stringify(form);
		$.ajax({
			url : '<%=request.getContextPath()  %>/web/v1/user/modify-profile.html',
			method : 'POST',
			contentType : "application/json",
			data : data,
    		success : function(resp) {
    			var o = $.parseJSON(resp),flag = o.flag,msg = o.msg;
    			if(flag){
    				$('*[ui-msg=g]').css('display','block');
    			}else{
    				alert("修改资料失败，刷新页面重试！");
    			}
    		},
    		error : function(resp) {alert('网络出现问题，刷新页面重新尝试！');}
    	});
	});
});
</script>

<div class="content__rightbody profile-grid__span-13--last">
    <div class="rightbody">
        <div class="rightbody__bread-crumb">
            <ol class="bread-crumb">
                <li><a href="">个人中心 ></a></li>
                <li><a href="">修改资料</a></li>
            </ol>
        </div>
        <span class="rightbody__title">&nbsp;修改资料</span>
        <div class="rightbody__grid">
        
        	<div class="rightbody__grid">
           		<form action="<%=request.getContextPath()  %>/web/v1/user/modify-profile.html" class="form" method="post" ui-form="">
           				<div class="row mtl" style="display:none" ui-msg="g">
                           <div class="span-12-last text-center">
                           	<span class="font-3x bold" style="color:#8DAE1A">提示:修改资料成功!</span>
                           </div>
                       </div>
                       <div class="row mtl">
                           <div class="span-5">
                               <span class="form__label">姓名：</span>
                           </div>
                           <div class="span-3">
                               <input class="form__input" type="text" value="${loginUser.name }" name="name"/>
                           </div>
                           <div class="span-4-last">
                               &nbsp;
                           </div>
                       </div>
                       <div class="row mtm">
                           <div class="span-5">
                               <span class="form__label">出生年月：</span>
                           </div>
                           <div class="span-3">
                               <select class="form__control" id="year" name="brithYear">
                               	<c:forEach items="${years }" var="year">
                               		<option selected="${loginUser.brithYear == year }" value="${year }">${year }</option>
                               	</c:forEach>
                               </select>年
                               <select class="form__control" id="month" name="brithMonth">
                               	<c:forEach items="${months }" var="month">
                               		<option selected="${loginUser.brithMonth == month }" value="${month }">${month }</option>
                               	</c:forEach>
                               </select> 月
                               <select class="form__control" id="day" name="brithDay"></select> 日
                           </div>
                           <div class="span-4-last">
                               &nbsp;
                           </div>
                       </div>

                       <div class="row mtm">
                          <div class="span-5">
                               <span class="form__label">性别：</span>
                           </div>
                           <div class="span-3">
                               <input type="radio" name="sex" value="M" checked="${loginUser.sex == 'M' ? 'checked' : ''}">男
                               &nbsp;
                               <input type="radio" name="sex" value="F" checked="${loginUser.sex == 'F' ? 'checked' : ''}">女
                           </div>
                           <div class="span-4-last">&nbsp;</div>
                       </div>

                       <div class="row mtl">
                           <div class="span-5">
                               <span class="form__label">手机号码：</span>
                           </div>
                           <div class="span-3">
                               <input class="form__input" type="text" value="${loginUser.loginId }" readonly="readonly"/>
                           </div>
                           <div class="span-4-last">&nbsp;</div>
                       </div>

                       <div class="row mtl">
                           <div class="span-5">
                               <span class="form__label">邮箱：</span>
                           </div>
                           <div class="span-3">
                               <input class="form__input" type="text" value="${loginUser.email }" name="email"/>
                           </div>
                           <div class="span-4-last">&nbsp;</div>
                       </div>

                       <div class="row">
                           <div class="span-5">&nbsp;</div>
                           <div class="span-3">
                               <input type="button" value="保存" class="btn btn-warning" ui-submit="">
                           </div>
                           <div class="span-4-last">&nbsp;</div>
                       </div>
                   </form>
               </div>
        </div>
    </div>
</div>
