<%--
  Created by IntelliJ IDEA.
  User: ggjjl1
  Date: 2020/10/19
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>

<h3>用户登录</h3>
<form:form action="/login" method="post" modelAttribute="user">
    <table cellpadding="5" cellspacing="0" border="0">
        <tr>
            <td>用户名</td>
            <td><form:input path="username"/></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><form:input path="password"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="登录"></td>
        </tr>
    </table>
</form:form>
</body>
</html>
