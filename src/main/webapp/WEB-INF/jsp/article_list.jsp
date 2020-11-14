<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>最新动态——慧怡女鞋 | huiyishoes.com</title>
    <meta content="huiyishoes.com慧怡女鞋是一家专注打造高品质真皮女鞋的网站" name="description"/>
    <meta content="慧怡,慧怡女鞋,慧怡女鞋馆,huiyishoes.com,huiyishoes,女鞋,真皮女鞋,石家庄慧怡女鞋" name="keywords"/>
    <meta content="" name="copyright"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <script type="text/javascript" src="<c:url value="/static/js/jquery-3.5.1.js"/> "></script>
    <script type="text/javascript" src="<c:url value="/static/js/effect.js"/>"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/huiyishoes-style.css"/>"/>
</head>
<body>
<div class="container">
    <div class="header">
        <div class="mb_logo">
            <%--            <img src="<c:url value="/static/img/huiyi_logo.jpg"/> " width="307" height="104" alt="huiyishoes.com"/>--%>
            慧怡
        </div>
        <div class="mb_nav">
            <ul>
                <li>
                    <a class="mb_btn_menu" href="/">首页
                        <br>
                        <b>HOME</b>
                    </a>
                </li>
                <li>
                    <a class="mb_btn_menu" href="#" target="_blank">产品展示
                        <br/>
                        <b>PRODUCT SHOW</b>
                    </a>
                    <dl>
                        <dd>
                            <a href="#" target="_blank">休闲鞋
                                <br/>
                                <b>LEISURE</b>
                            </a>
                        </dd>
                        <dd>
                            <a href="#">靴子
                                <br/>
                                <b>BOOT</b>
                            </a>
                        </dd>
                        <dd>
                            <a href="#">拖鞋
                                <br/>
                                <b>SLIPPER</b>
                            </a>
                        </dd>
                    </dl>
                </li>
                <li>
                    <a class="mb_btn_menu" href="#"
                       target="_blank">最新动态
                        <br/>
                        <b>ACTIVITY</b>
                    </a>
                </li>
                <li>
                    <a class="mb_btn_menu" href="#" target="_blank">品牌文化
                        <br/>
                        <b>BRAND&CULTURE</b>
                    </a>
                    <dl>
                        <dd>
                            <a href="#" target="_blank">品牌历史
                                <br/>
                                <b>HISTORY</b>
                            </a>
                        </dd>
                        <dd>
                            <a href="#" target="_blank">生活方式
                                <br/>
                                <b>LIFE STYLE</b>
                            </a>
                        </dd>
                        <dd>
                            <a href="#" target="_blank">皮鞋保养
                                <br>
                                <b>SHOES MAINTAINANCE</b>
                            </a>
                        </dd>
                    </dl>
                </li>
                <li>
                    <a class="mb_btn_menu" href="http://corp.metersbonwe.com/Index/Brand" target="_blank">在线购物
                        <br/>
                        <b>SHOPPING</b>
                    </a>
                    <dl class="mb_btn_nav_brand">
                        <dd>
                            <a href="https://13780516996.taobao.com/" target="_blank">淘宝（慧怡女鞋生活馆）</a>
                        </dd>
                        <dd>
                            <a href="http://www.jd.com/huiyishoes" target="_blank">京东（待开放）</a>
                        </dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
    <!-- content -->
    <div class="mb_content mb_article_con">
        <!-- 面包屑 -->
        <div class="mb_brand">首页 > 最新动态</div>
        <!-- 文章内容 -->
        <div class="hy_article">
            <h3>${article.title}</h3>
            <p>${article.content}</p>
        </div>
    </div>
    <div class="mb_footer">
        <ul>
            <li>
                <a href="/about" target="_blank">关于我们</a>
                <a href="/about" target="_blank">
                    <b>/ ABOUT US</b>
                </a>
            </li>
            <li>
                <a href="/cooperation" target="_blank">商务合作</a>
                <a href="/cooperation" target="_blank">
                    <b>/ BUSINESS COOPERATION</b>
                </a>
            </li>
            <li>
                <a href="/navigation" target="_blank">网站导航</a>
                <a href="/navigation" target="_blank">
                    <b>/ SITE NAVIGATION</b>
                </a>
            </li>
            <li>
                <a href="/contact" target="_blank">联系我们</a>
                <a href="/contact" target="_blank">
                    <b>/ CONTACT US</b>
                </a>
            </li>
            <li>
                <a href="/feedback" target="_blank">向我们反馈</a>
                <a href="/feedback" target="_blank">
                    <b>/ FEEDBACK</b>
                </a>
            </li>
            <li>
                <a href="/store" target="_blank">我们的门店</a>
                <a href="/store" target="_blank">
                    <b>/ STORE LOCATOR</b>
                </a>
            </li>
        </ul>
        <p>Copyright© 慧怡女鞋 1999-2020, All Rights Reserved</p>
    </div>
</div>
</body>
</html>
