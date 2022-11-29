<%--
  Created by IntelliJ IDEA.
  User: zhangyiguang
  Date: 2022/11/27
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page  isELIgnored="false" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>register</title>
    <link href="css/register.css" type="text/css" rel="stylesheet"/>
</head>

o<body>
${register_msg}
<form action="/brand_demo_war/registerServlet" method="post">
    <p>
        <span>账号：</span>
        <input type="text" name="username" class="zhanghao"  />
    </p>
    <p>
        <span>密码：</span>
        <input type="password" name="password" class="mima"  />
    </p>

    <p>
    <div>
        <div class="h4">
            <h4>验证码：</h4>
        </div>
        <div class="checkCode1">
            <input type="text" name="checkCode" class="checkCode11" placeholder="请输入验证码"  />
        </div>
        <div class="img">
            <img src="img/code.jpg">
        </div>
    </div>
    </p>
    <p>
        <a href="register.jsp" target="_self"> <input type="submit" class="register" value="注册" /></a>
        <a href="login.jsp" target="_self"><input type="button" class="signin" value="已有账号去登录" /></a>
    </p>
</form>
</body>
</html>
