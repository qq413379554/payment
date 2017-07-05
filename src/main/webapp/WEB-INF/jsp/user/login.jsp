<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>Login</title>

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
	<div id='login'>
		<form id="form">
			<input id='username' /> <input id='password' /> <input type='button'
				onclick='login();' />
		</form>
	</div>

	<script language="javascript">
		function login() {
			if (form.username.value == "") {
				alert("请输入管理员名称!");
				form.username.focus();
				return false;
			}
			if (form.password.value == "") {
				alert("请输入密码!");
				form.password.focus();
				return false;
			}
		}
	</script>
</body>
</html>