<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>用户注册</title>
    <script type="text/javascript" src="<c:url value="/static/js/jquery-3.5.1.js" />"></script>
    <script type="text/javascript" src="<c:url value="/static/js/one.js"/>"></script>
</head>
<body>

<h3>用户注册</h3>

<form:form method="post" action="register" modelAttribute="user">
    <form:errors path="*" element="div" cssClass="errors"/>
    <table cellpadding="5" cellspacing="0" border="0">
        <tr>
            <td><form:label path="email" cssErrorClass="error">邮箱</form:label></td>
            <td><form:input path="email" cssErrorClass="error"/></td>
        </tr>
        <tr>
            <td><form:label path="username" cssErrorClass="error">用户名</form:label></td>
            <td><form:input path="username" cssErrorClass="error"/></td>
        </tr>
        <tr>
            <td><form:label path="password" cssErrorClass="error">密码</form:label></td>
            <td><form:password path="password" cssErrorClass="error"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="注册"/></td>
        </tr>
    </table>
</form:form>
</body>
</html>
