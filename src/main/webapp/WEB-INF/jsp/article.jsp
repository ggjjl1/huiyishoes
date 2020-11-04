<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>${article.title}</title>
</head>
<body>

<h3 class="main-title">${article.title}</h3>
<h4 class="sub-title"></h4>
用户：${user.username} | 更新于：<fmt:formatDate pattern="yyyy年MM月dd日" value="${article.updateTime}"/>
<hr>
<p>${article.content}</p>

</body>
</html>
