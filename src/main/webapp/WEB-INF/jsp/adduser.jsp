<%--
  Created by IntelliJ IDEA.
  User: ggjjl1
  Date: 2020/10/19
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加一个用户</title>
</head>
<body>

<h3>添加一位用户</h3>

<table border="1" cellspacing="0" cellpadding="10">
    <form action="/addUser" method="post">
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username"/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password"/></td>
        </tr>
        <tr>
            <td>邮箱：</td>
            <td><input type="email" name="email"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="提交"/></td>
        </tr>
    </form>
</table>

</body>
</html>
