<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>用户登录</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/static/css/style.css" />">
<script src="<c:url value="/static/js/jquery-3.5.1.js" />"></script>
<script src="<c:url value="/static/js/one.js" />"></script>
</head>
<body>

	<h3>用户登录</h3>
	<form:form action="login" method="post" modelAttribute="user">
		<form:errors path="*" element="div" cssClass="errors"/>
		<table cellpadding="5" cellspacing="0" border="0">
			<tr>
				<td><form:label path="username">用户名</form:label></td>
				<td><form:input path="username" /></td>
			</tr>
			<tr>
				<td><form:label path="password">密码</form:label></td>
				<td><form:password path="password" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="登录"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
