<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>UserList</title>
    
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
                <td><input id="phone" name="phone" type="text" /></td>
                <td>这里增加验证码图片</td>   
            </tr>
            <tr>  
                <td>手机验证码：</td>  
                <td><input id="phone" name="phone" type="text" /></td>
                <td><input type="button" value="获取验证码"></td>
            </tr>
            <tr>  
                <td>身份认证:</td>  
                <td><input id="idCard" name="idCard" type="text" /></td>  
            </tr>
            	<td><input id="deal" checked="checked" type="checkbox"/>我已阅读并同意</td> 
            	<td><a target="_blank" href="/serviceAgreement">《Payment System服务协议》 </a></td>   
            <tr>  
                <td><input type="button" value="立即注册" onclick="register();"></td>
                <td><input type="reset" value="重置"></td>  
            </tr>  
        </table>  
    </form> 
  </body>
  <script type="text/javascript">
   function register(){ 
   }
  </script>
</html>