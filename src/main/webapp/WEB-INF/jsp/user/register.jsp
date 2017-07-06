<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Register</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   	<form action="${pageContext.request.contextPath }/user/regist">  
        <table border="1">  
            <tr>  
                <td>用户账号：</td>  
                <td><input id="username" name="username" type="text" /></td>  
            </tr>  
            <tr>  
                <td>登录密码：</td>  
                <td><input id="password" name="password" type="password" /></td>  
            </tr>
            <tr>  
                <td>确认密码：</td>  
                <td><input id="confirm" name="confirm" type="password" /></td>  
            </tr>
            <tr>  
                <td>手机号码：</td>  
                <td><input id="phone" name="phone" type="text" /></td>  
            </tr>
            <tr>  
                <td>验证码：</td>  
                <td><input id="code" name="code" type="text" /></td>
                <td>这里增加验证码图片</td>   
            </tr>
            <tr>  
                <td>手机验证码：</td>  
                <td><input id="checkCode" name="checkCode" type="text" /></td>
                <td><input id="checkCodeButton" name="checkCodeButton" type="button" value="获取验证码"></td>
            </tr>
            <tr>  
                <td>身份认证:</td>  
                <td><input id="idCard" name="idCard" type="text" /></td>  
            </tr>
            	<td><input id="deal" name="deal" checked="checked" type="checkbox"/>我已阅读并同意</td> 
            	<td><a target="_blank" href="/serviceAgreement">《Payment System服务协议》 </a></td>   
            <tr>  
                <td><input id="submit" name="submit" type="button" value="立即注册" onclick="register();"></td>
                <td><input id="reset" name="reset" type="reset" value="重置"></td>  
            </tr>  
        </table>  
    </form> 
  </body>
  <script src="javascripts/jquery/jquery-3.2.1.min.js"></script>
  <script type="text/javascript">
   function register(){
	   var username = $("#username").val().trim();
	   var password = $("#password").val().trim();
	   var confirm = $("#confirm").val().trim();
	   var phone = $("#phone").val().trim();
	   var code = $("#code").val().trim();
	   var checkCode = $("#checkCode").val().trim();
	   var idCard = $("#idCard").val().trim();
	   window.alert(username);
   }
  </script>
</html>