<%--
  Created by IntelliJ IDEA.
  User: ggjjl1
  Date: 2021/1/18
  Time: 22:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>编辑文章</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/bootstrap.css" />"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/huiyishoes.css"/>"/>
    <script type="text/javascript" src="<c:url value="/static/js/jquery-3.5.1.js"/> "></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/datatables.css"/> " />
    <script type="text/javascript" src="<c:url value="/static/js/datatables.js"/> "></script>
</head>
<body>
<div id="hy">
    <div id="post">
        <h3>添加文章</h3>
        <form:form action="post" method="post" modelAttribute="article">
            <form:label path="title">标题</form:label>
            <form:input path="title" value="${article.title}"></form:input>
            <br><br>
            <form:label path="content">内容</form:label>
            <form:textarea path="content" style="width:300px;height:100px;" value="${article.content}"></form:textarea>
            <br><br>
            <input type="submit" value="保存"/>
        </form:form>
    </div>
</div>
</body>
</html>
