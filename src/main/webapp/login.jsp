<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=basePath%>">
	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
	<title>Login</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="payment,keyword2,keyword3">
	<meta http-equiv="description" content="This is payment system">
    <link href="stylesheets/layout.css" rel="stylesheet" />
    <link href="stylesheets/login.css" rel="stylesheet"/>
    <style>
        .ibar {
            display: none;
        }
    </style>
</head>

<body class="login-bg">
	<div class="main ">
        <!--登录-->
        <div class="login-dom login-max">
            <div class="logo text-center">
                <a href="#">
                    <img src="image/login/logo.png" width="180px" height="180px" />
                </a>
            </div>
            <div class="login container " id="login">
                <p class="text-big text-center logo-color">世界共享</p>
                <p class="text-center margin-small-top logo-color text-small">Payment System</p>
                <form class="login-form" action="${pageContext.request.contextPath }/user/login" method="get" autocomplete="off">
                    <div class="login-box border text-small" id="box">
                        <div class="name border-bottom">
                            <input type="text" placeholder="手机/邮箱/账号" id="username" name="username" datatype="*" nullmsg="请填写帐号信息" />
                        </div>
                        <div class="pwd">
                            <input type="password" placeholder="密码" datatype="*" id="password" name="password" nullmsg="请填写帐号密码" />
                        </div>
                    </div>
                    <input type="submit" class="btn text-center login-btn" value="立即登录" />
                </form>
                <div class="forget">
                    <a href="#" class="forget-pwd text-small fl">忘记登录密码？</a><a href="${pageContext.request.contextPath }/user/register" class="forget-new text-small fr" id="forget-new">注册账号</a>
                </div>
            </div>
        </div>
        <div class="footer text-center text-small ie">
            Copyright 2013-2016 版权所有 ©tzhsweet 2015-2018      <a href="#" target="_blank">粤ICP备16024545号-1</a>
            <span class="margin-left margin-right">|</span>
            <script src="#" language="JavaScript"></script>
        </div>
        <div class="popupDom">
            <div class="popup text-default">
            </div>
        </div>
    </div>
</body>
<script src="javascripts/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
    function popup_msg(msg) {
        $(".popup").html("" + msg + "");
        $(".popupDom").animate({
            "top": "0px"
        }, 400);
        setTimeout(function () {
            $(".popupDom").animate({
                "top": "-40px"
            }, 400);
        }, 2000);
    }

    /*动画（注册）*/
    $(document).ready(function (e) {
        // $("input[name=username]").focus();
        // $('.login-form').Validform({
        // 	ajaxPost: true,
        // 	tiptype: function(msg) {
        // 		if (msg) popup_msg('' + msg + '');
        // 	},
        // 	callback: function(ret) {
        // 		popup_msg('' + ret.info + '');
        // 		if (ret.status == 1) {
        // 			if (ret.uc_user_synlogin) {
        // 				$("body").append(ret.uc_user_synlogin);
        // 			}
        // 			setTimeout("window.location='" + ret.url + "'", 2000);
        // 		}
        // 	}
        // })

    });
</script>
</html>