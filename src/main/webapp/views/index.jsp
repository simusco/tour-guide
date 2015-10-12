<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>178团建旅游网</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
    <link rel="stylesheet" href="<%=request.getContextPath()  %>/css/index.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()  %>/css/font-awesome.min.css">
    <!--[if IE 7]>
        <link rel="stylesheet" href="<%=request.getContextPath()  %>/css/font-awesome-ie7.min.css">
    <![endif]-->
     <script src="<%=request.getContextPath()  %>/js/jquery.min.js"></script>
    <!--[if lte IE 9]>
        <script src="<%=request.getContextPath()  %>/js/respond.min.js"></script>
        <script src="<%=request.getContextPath()  %>/js/html5shiv.min.js"></script>
    <![endif]-->
    
    
    <script type="text/javascript">
		$.extend({
			animation : {
				adv : function(container){
					var curIndex = 0,circles = [],cssArray =  [], t = this;
					
					$('*[ui-animation-img]', container).each(function(){
						var img = $(this).attr('src');
						var css = "url("+img+") no-repeat center center";
						
						cssArray.push(css);
					});
					
					$('*[ui-animation-circle]', container).each(function(){
						circles.push($(this));
					});
					
					this.play = function(){
						container.css('background',cssArray[curIndex++]);
						var interval = window.setInterval(function(){
							if(curIndex >= cssArray.length)
								curIndex = 0;
								
							t.display(curIndex);
							
							curIndex++;
						}, 4000)
					};
					
					this.display = function(index){
						var css = cssArray[index],circle = circles[index];
						container.css('background',css);
						for(var x = 0;x<circles.length;x++){
							circles[x].removeClass('active');
						};
						circle.addClass('active');
					}
					
					this.next = function(){
						if(curIndex > cssArray.length-1)
							curIndex = 0;
						
						t.display(curIndex);
						
						curIndex++;
					}
					this.pre = function(){
						curIndex--;
						
						if(curIndex < 0)
							curIndex = cssArray.length-1;
						
						t.display(curIndex);
					}
					
					return this;
				}
			},
			doNothing : function(){}
	    });
		
		var advAnimation = null;
		$(function(){
			var advContainer = $("*[ui-animation=adv]");
			advAnimation = $.animation.adv(advContainer);
			
			advAnimation.play();
		});
    </script>
    
</head>
<body>


	<div class="topbar">
        <div class="container">
            <div class="row">
                <div class="topbar-content col-xs-7 col-sm-5 col-md-4 col-lg-4 col-xs-push-5 col-sm-push-7 col-md-push-8 col-lg-push-8">
                    <ul class="login">
                        <li><a href="signout.html">注册</a></li>
                        <li><a href="login.html">登陆</a></li>
                        <li><a href="about.html">关注我们</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    
    <div class="navbar">
        <div class="container">
            <div class="row">
                <div class="col-xs-3 col-sm-3 col-md-3 navbar-item active"><a href="<%=request.getContextPath()  %>/views/index.jsp">首页</a></div>
                <div class="col-xs-3 col-sm-3 col-md-3 navbar-item"><a href="<%=request.getContextPath()  %>/query.action">线路</a></div>
                <div class="col-xs-3 col-sm-3 col-md-3 navbar-item"><a href="">工具</a></div>
                <div class="col-xs-3 col-sm-3 col-md-3 navbar-item"><a href="">帮助</a></div>
            </div>
        </div>
    </div>

    <div class="advertise">
        <div class="advertise-screen" ui-animation="adv" id="adv-animation">
			<img alt="" ui-animation-img="" src="<%=request.getContextPath()  %>/images/index/ad01.png" style="display:none">
           	<img alt="" ui-animation-img="" src="<%=request.getContextPath()  %>/images/index/ad02.png" style="display:none">
           	<img alt="" ui-animation-img="" src="<%=request.getContextPath()  %>/images/index/ad03.png" style="display:none">

            <div class="control-bar">
                <div class="btn-left"><a href="javascript:advAnimation.pre();" ></a></div>
                <div class="btn-right"><a href="javascript:advAnimation.next();"></a></div>
            </div>

            <div class="control-circle-bar">
                <div class="circle"><a href="javascript:advAnimation.display(0);" ui-animation-circle="">&nbsp;</a></div>
                <div class="circle"><a href="javascript:advAnimation.display(1);" ui-animation-circle="">&nbsp;</a></div>
                <div class="circle"><a href="javascript:advAnimation.display(2);" ui-animation-circle="">&nbsp;</a></div>
            </div>
        </div>
    </div>


    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-md-6">
                <h3>热门套餐</h3>
            </div>
            <div class="col-xs-6 col-md-6 text-right text-v-mid line-height-50">
                <a href="">更多>></a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-lg-3 padding-0 text-center-xs text-center-sm text-left-md text-left-lg">
                <div class="package">
                    <div class="package-image">
                        <img src="<%=request.getContextPath()  %>/images/index/hot01.png" alt="">
                    </div>
                    <span class="package-price">$200元</span>
                    <span class="package-title">广州长隆自驾套餐</span>
                </div>
            </div>
            <div class="col-md-4 col-lg-3 padding-0 text-center-xs text-center-sm text-center-md text-center-lg">
                <div class="package">
                    <div class="package-image">
                        <img src="<%=request.getContextPath()  %>/images/index/hot02.png" alt="">
                    </div>
                    <span class="package-price">$200元</span>
                    <span class="package-title">广州长隆自驾套餐</span>
                </div>
            </div>
            <div class="col-md-4 col-lg-3 padding-0 text-center-xs text-center-sm text-right-md text-center-lg">
                <div class="package">
                    <div class="package-image">
                        <img src="<%=request.getContextPath()  %>/images/index/hot03.png" alt="">
                    </div>
                    <span class="package-price">$200元</span>
                    <span class="package-title">广州长隆自驾套餐</span>
                </div>
            </div>
            <div class="visible-lg col-lg-3 padding-0 text-center-xs text-center-sm text-right-md text-right-lg">
                <div class="package">
                    <div class="package-image">
                        <img src="<%=request.getContextPath()  %>/images/index/hot04.png" alt="">
                    </div>
                    <span class="package-price">$200元</span>
                    <span class="package-title">广州长隆自驾套餐</span>
                </div>
            </div>
        </div>
    </div>

    <div class="container margin-t-30">
        <div class="row">
            <div class="col-xs-6 col-md-6">
                <h3>周边景区</h3>
            </div>
            <div class="col-xs-6 col-md-6 text-right text-v-mid line-height-50">
                <a href="">更多>></a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-lg-3 padding-0 text-center-xs text-center-sm text-left-md text-left-lg">
                <div class="package">
                    <div class="package-image">
                        <img src="<%=request.getContextPath()  %>/images/index/hot05.png" alt="">
                    </div>
                    <span class="package-title">广州长隆自驾套餐</span>
                    <span class="package-desc">景色迷人，大量各国建筑，全部都是仿造国外的建筑，都具乐风格</span>
                </div>
            </div>
            <div class="col-md-4 col-lg-3 padding-0 text-center-xs text-center-sm text-center-md text-center-lg">
                <div class="package">
                    <div class="package-image">
                        <img src="<%=request.getContextPath()  %>/images/index/hot06.png" alt="">
                    </div>
                    <span class="package-title">广州长隆自驾套餐</span>
                    <span class="package-desc">景色迷人，大量各国建筑，全部都是仿造国外的建筑，都具乐风格</span>
                </div>
            </div>
            <div class="col-md-4 col-lg-3 padding-0 text-center-xs text-center-sm text-right-md text-center-lg">
                <div class="package">
                    <div class="package-image">
                        <img src="<%=request.getContextPath()  %>/images/index/hot07.png" alt="">
                    </div>
                    <span class="package-title">广州长隆自驾套餐</span>
                    <span class="package-desc">景色迷人，大量各国建筑，全部都是仿造国外的建筑，都具乐风格</span>
                </div>
            </div>
            <div class="visible-lg col-lg-3 padding-0 text-center-xs text-center-sm text-right-md text-right-lg">
                <div class="package">
                    <div class="package-image">
                        <img src="<%=request.getContextPath()  %>/images/index/hot08.png" alt="">
                    </div>
                    <span class="package-title">广州长隆自驾套餐</span>
                    <span class="package-desc">景色迷人，大量各国建筑，全部都是仿造国外的建筑，都具乐风格</span>
                </div>
            </div>
        </div>
    </div>

    <div class="container margin-t-30">
        <div class="row">
            <div class="col-xs-6 col-md-6">
                <h3>精选主题</h3>
            </div>
            <div class="col-xs-6 col-md-6 text-center-xs text-center-sm text-right text-v-mid line-height-50">
                <a href="">更多>></a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 col-lg-3 text-center-xs text-center-sm text-left-md text-left-lg padding-0">
                <div class="topic">
                    <div class="topic-image">
                        <img src="<%=request.getContextPath()  %>/images/index/hot03.png" alt="">
                    </div>
                    <span class="topic-title">广州长隆自驾套餐</span>
                </div>
            </div>
            <div class="col-md-3 col-lg-3 text-center-xs text-center-sm text-center-md text-center-lg padding-0">
                <div class="topic">
                    <div class="topic-image">
                        <img src="<%=request.getContextPath()  %>/images/index/hot07.png" alt="">
                    </div>
                    <span class="topic-title">广州长隆自驾套餐</span>
                </div>
            </div>
            <div class="col-md-3 col-lg-3 text-center-xs text-center-sm text-center-md text-center-lg padding-0">
                <div class="topic">
                    <div class="topic-image">
                        <img src="<%=request.getContextPath()  %>/images/index/hot04.png" alt="">
                    </div>
                    <span class="topic-title">广州长隆自驾套餐</span>
                </div>
            </div>
            <div class="col-md-3 col-lg-3 text-center-xs text-center-sm text-right-md text-right-lg padding-0">
                <div class="topic">
                    <div class="topic-image">
                        <img src="<%=request.getContextPath()  %>/images/index/hot02.png" alt="">
                    </div>
                    <span class="topic-title">广州长隆自驾套餐</span>
                </div>
            </div>
        </div>
    </div>

    <div class="container  margin-t-30 reason-wraper">
        <div class="row">
            <div class="col-md-12">
                <h3>选择我们的4大理由</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-8 padding-l-0">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="reason-item">
                            <img src="<%=request.getContextPath()  %>/images/index/r1.png" alt="" class="fl margin-r-10">
                            <h5>【精品线路】</h5>
                            <p>亲自丈量，专业勘测，为您精心挑选出当季最适合自驾路线</p>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="reason-item">
                            <img src="<%=request.getContextPath()  %>/images/index/r2.png" alt="" class="fl margin-r-10">
                            <h5>【精品线路】</h5>
                            <p>亲自丈量，专业勘测，为您精心挑选出当季最适合自驾路线</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="reason-item">
                            <img src="<%=request.getContextPath()  %>/images/index/r3.png" alt="" class="fl margin-r-10">
                            <h5>【精品线路】</h5>
                            <p>亲自丈量，专业勘测，为您精心挑选出当季最适合自驾路线</p>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6">
                        <div class="reason-item">
                            <img src="<%=request.getContextPath()  %>/images/index/r4.png" alt="" class="fl margin-r-10">
                            <h5>【精品线路】</h5>
                            <p>亲自丈量，专业勘测，为您精心挑选出当季最适合自驾路线</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 video-wraper padding-r-0 text-center-xs text-center-sm text-right-md text-right-lg">
                <embed 
                    type="application/x-shockwave-flash" 
                    src="playerVM2.swf" 
                    id="CuPlayerVM" 
                    name="CuPlayerV4" 
                    bgcolor="#fff" 
                    quality="high" 
                    allowfullscreen="true" 
                    allowscriptaccess="always" 
                    wmode="opaque" 
                    salign="lt" 
                    flashvars="video_file=video.flv&playbtn_scale=1&auto_play=no&clock_display=yes&fullscreen_display=n" 
                    height="190" 
                    width="268"
                    >
                <h4>自由客介绍</h4>
            </div>
        </div>
    </div>

    <div class="container margin-t-30">
        <div class="row">
            <img src="<%=request.getContextPath()  %>/images/common/card-001.jpg" class="max-width-fillfull" alt="">
        </div>
    </div>

    <div class="footer">
        <div class="link-us">
            <ul class="link">
                <li><a href="">关于我们</a></li>
                <li><a href="">加入我们</a></li>
                <li><a href="">联系我们</a></li>
            </ul>
            <ul class="us">
                <li><a href="">友情链接</a></li>
                <li><a href="">途牛</a></li>
                <li><a href="">去哪儿</a></li>
            </ul>
        </div>
        <div>
            <div class="copyright">
                2011-2015 wwww.trip.com All Right Reserved 备案号:124838273
            </div>
        </div>
    </div>

</body>
</html>