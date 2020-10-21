<%--
  Created by IntelliJ IDEA.
  User: ggjjl1
  Date: 2020/10/18
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>显示所有用户</title>
</head>
<body>

<c:if test="${ empty requestScope.users }">
    没有用户数据。
</c:if>
<c:if test="${ !empty requestScope.users }">
    <table border="1" cellpadding="10" cellspacing="0">
        <tr>
            <th>序号</th>
            <th>邮箱</th>
            <th>用户名</th>
            <th>密码</th>
            <th>注册时间</th>
            <th>编辑</th>
            <th>删除</th>
        </tr>

        <c:forEach items="${ requestScope.users }" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.email}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td><fmt:formatDate value="${user.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td><a href="/userEdit?id=${user.id}">编辑</a></td>
                <td><a href="/userDelete?id=${user.id}">删除</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<a href="/addUser">添加一个用户</a>


</body>
</html>
