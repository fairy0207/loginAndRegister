<%--
  Created by IntelliJ IDEA.
  User: zhangyiguang
  Date: 2022/11/21
  Time: 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page  isELIgnored="false" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>login</title>
    <link href="css/sign%20in.css" type="text/css" rel="stylesheet"/>
</head>

<body>
<form action="/brand_demo_war/loginServlet" method="post">
    <div id="errorMsg">${login_msg} ${register_msg}</div>
    <p>
        <span>账号：</span>
        <input type="text" name="username" value="${cookie.username.value}" class="zhanghao"  />
    </p>
    <p>
        <span>密码：</span>
        <input type="password" name="password" value="${cookie.password.value}" class="mima" />
    </p>
    <p>
        <span>记住我</span>
        <input type="checkbox" name="remember" value="1" id="remember" />
    </p>
    <p>
        <a target="_self"><input type="submit" class="signin" value="登录" /></a>
        <a href="register.jsp" target="_self"> <input type="button" class="register" value="注册" /></a>
    </p>
</form>
</body>
</html>
