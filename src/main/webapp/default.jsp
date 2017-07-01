<%--
  Created by IntelliJ IDEA.
  User: Tony.Jaa
  Date: 2017/7/1
  Time: 8:50
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>博客-主页</title>
  </head>
  <body>
  <div class="container">
    <form action="user" method="post">
      <input type="text" placeholder="请输入你的邮箱"><br>
      <input type="password" placeholder="请输入密码"><br>
      <input type="submit" value="登录">
    </form>
    
    <p>
      ${requestScope.message}
    </p>

    <a href="signUp.jsp">注册</a>
  </div>
  </body>
</html>
