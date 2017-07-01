<%--
  Created by IntelliJ IDEA.
  User: Tony.Jaa
  Date: 2017/7/1
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
</head>
<body>
<form action="user" method="post">
    <h1>首页</h1>
    <input type="hidden" name="action" value="signUp">
    <input type="text" name="email" placeholder="邮箱"><br>
    <input type="password" name="password" placeholder="密码"><br>
    <input type="submit" value="注册">
</form>

${requestScope.message}

</body>
</html>
