<%--
  Created by IntelliJ IDEA.
  User: ggjjl1
  Date: 2020/10/16
  Time: 17:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/style.css"/>"/>
</head>
<body>

<h3>网站首页</h3>

<a href="<c:url value="/login"/>">登录</a> |
<a href="<c:url value="/register"/>">注册</a>

<hr>
<a href="<c:url value="/logout"/>">退出登录</a>

</body>
</html>
