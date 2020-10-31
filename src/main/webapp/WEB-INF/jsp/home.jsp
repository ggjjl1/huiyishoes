<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/style.css"/>"/>
</head>
<body>

<h3>网站首页</h3>
<div class="header">
<c:if test="${empty sessionScope.user}">
    <a href="<c:url value="/login"/>">登录</a> |
    <a href="<c:url value="/register"/>">注册</a>
</c:if>

<c:if test="${not empty sessionScope.user}">
    <p>你好，${sessionScope.user.getUsername()}，欢迎登录！</p>
    <p><a href="<c:url value="/post"/>">发布</a></p>
    <a href="<c:url value="/logout"/>">退出登录</a>
</c:if>
</div>

<div class="main">
    <c:if test="${!empty articles}">
    <ul>
        <c:forEach var="p" items="${articles}">
            <li>
                <a href="<c:url value="/article/${p.id}"/>">${p.title}</a>
                <p>${p.content}</p>
            </li>
        </c:forEach>
    </ul>
    </c:if>
</div>

<div class="footer"></div>

</body>
</html>
