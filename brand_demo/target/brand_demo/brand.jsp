<%--
  Created by IntelliJ IDEA.
  User: zhangyiguang
  Date: 2022/11/14
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page  isELIgnored="false" %>


<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>${user.username}，欢迎您</h1>
<input type="button" value="新增"><br>
<hr>
<table  border="1" cellpadding="0" width="800">
    <tr>
        <th>id</th>
        <th>brandName</th>
        <th>companyName</th>
        <th>ordered</th>
        <th>description</th>
        <th>status</th>
        <th>操作</th>
    </tr>

    <c:forEach items="${brands}" var="brand" varStatus="status">
        <tr align="center">
<%--            <td>${brand.id}</td>--%>
            <td>${status.count}</td>
            <td>${brand.brandName}</td>
            <td>${brand.companyName}</td>
            <td>${brand.ordered}</td>
            <td>${brand.description}</td>
            <c:if test="${brand.status==1}">
                <td>启用</td>
            </c:if>
            <c:if test="${brand.status==0}">
                <td>禁用</td>
            </c:if>

            <td> <a href="#">修改</a><a href="#">删除</a></td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
