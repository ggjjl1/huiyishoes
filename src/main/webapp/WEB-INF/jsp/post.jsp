<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>${title}</title>
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
            <form:input path="title"></form:input>
            <br><br>
            <form:label path="content">内容</form:label>
            <form:textarea path="content" style="width:300px;height:100px;"></form:textarea>
            <br><br>
            <input type="submit" value="保存"/>
        </form:form>
    </div>
    <hr>
    <div id="content">
        <table id="myTable" class="table table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th>标题</th>
                <th>内容</th>
                <th>作者</th>
                <th>标签</th>
                <th>创建时间</th>
                <th>更新时间</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
</div>
<script>
    $(document).ready(function () {
        $('#myTable').DataTable({
            ajax: {
                url: '/getAllArticle',
                dataSrc: ''
            },
            columns: [
                {data: 'id'},
                {data: 'title'},
                {data: 'content'},
                {data: 'tags'},
                {data: 'userId'},
                {data: 'createTime'},
                {data: 'updateTime'},
                {
                    data: 'id',
                    render: function (data, type) {
                        return type === 'display' ?
                            '<a href="/delete?id='+ data +'">删除</a> / <a href="/update?id='+ data +'">更新</a>' :
                            data
                    }
                }
            ]
        });
    });
</script>
</body>
</html>
