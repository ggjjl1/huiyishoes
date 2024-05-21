<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8"/>
    <title>慧怡女鞋官方网站 | huiyishoes.com</title>
    <meta content="huiyishoes.com慧怡女鞋是一家专注打造高品质真皮女鞋的网站" name="description"/>
    <meta content="慧怡,慧怡女鞋,慧怡女鞋馆,huiyishoes.com,huiyishoes,女鞋,真皮女鞋,石家庄慧怡女鞋" name="keywords"/>
    <meta content="" name="copyright"/>
    <link rel="shortcut icon" href="<c:url value="/static/img/favicon.ico"/>" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/bootstrap.css" />"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/static/css/huiyishoes.css"/>"/>
    <script type="text/javascript" src="<c:url value="/static/js/jquery-3.5.1.js"/> "></script>
    <script type="text/javascript" src="<c:url value="/static/js/effect.js"/>"></script>
</head>
<body>
<div class="wrapper">
    <!-- header -->
    <div class="mb_header">
        <div class="mb_logo">
            <!-- <img src="<c:url value="/static/img/huiyi_logo.jpg"/> " width="307" height="104" alt="huiyishoes.com"/> -->
            慧怡女鞋
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
    <div class="mb_content">
        <div class="mb_fl_frame">
            <dl>
                <dt>
                    品牌介绍<b>/ ABOUT BRAND</b>
                </dt>
                <dd>
                    <p>
                        <span style="line-height: 115%; font-family: 宋体,SimSun; font-size: 14px;">我们起步于1999年，是一个来自浙江的专注打造高品质真皮女鞋的品牌。几十年来专注于高品质女鞋的设计和开发，致力于为中国女性提供舒适的鞋子。</span>
                    </p>
                </dd>
            </dl>
        </div>
        <div class="mb_mid_frame">
            <dl>
                <dt>
                    <a style="text-decoration:none;color:#000" href="#" title="查看更多" target="_blank">活动公告</a>
                    <a style="text-decoration:none;color:#eb4d88" target="_blank" href="#">
                        <b>/ ANNOUNCEMENT</b>
                    </a>
                    <a class="mb_btn_more"></a>
                </dt>
                <dd class="mb_mid_frame_con">
                    <a href="/article/1">文章一</a>
                    <a href="/article/2">文章二</a>
                    <a href="/article/3">文章三</a>
                </dd>
            </dl>
        </div>
        <div class="mb_fr_frame">
            <dl>
                <dt>联系我们<b> / CONTACT US</b></dt>
                <dd>
                    <ul>
                        <li>地址：河北省石家庄市华北鞋城E区3排5号</li>
                        <li>电话：18243001174</li>
                        <li><a style="color: #111;" href="https://13780516996.taobao.com">>> 在线购物：慧怡女鞋馆</a></li>
                    </ul>
                </dd>
            </dl>
        </div>
    </div>
    <!-- footer -->
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
                <a href="/feedback" target="_blank">问题反馈</a>
                <a href="/feedback" target="_blank">
                    <b>/ FEEDBACK</b>
                </a>
            </li>
            <li>
                <a href="/storelocator" target="_blank">查找门店</a>
                <a href="/storelocator" target="_blank">
                    <b>/ STORE LOCATOR</b>
                </a>
            </li>
        </ul>
        <p>Copyright© 慧怡女鞋 1999-2020, All Rights Reserved</p>
    </div>
</div>
</body>
</html>
