<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>${title}</title>
</head>
<body>
<h3>添加一篇文章</h3>
<form:form action="post" method="post" modelAttribute="article">
    <form:label path="title">标题</form:label>
    <form:input path="title"></form:input>
    <br><br>
    <form:label path="content">内容</form:label>
    <form:textarea path="content" style="width:300px;height:100px;"></form:textarea>
    <br><br>
    <input type="submit" value="保存"/>
</form:form>
</body>
</html>
