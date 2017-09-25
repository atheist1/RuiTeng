<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" type="text/css" href="../css/index.css">
    <script src="../js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src='../js/index.js'></script>
</head>
<body>
    <header id="header" class="">
        <div class="container">
            <div id="head_top" class="clearfix">
                <a href="index.html" class="logo clearfix"><img src="../image/mmexport1501831426456.png" alt=""></a>
                <a href="index.html" class="logo1 clearfix"><img src="../image/mmexport1501831427716.png" alt=""></a>
            </div>
        </div>

        <div class="navbar navbar-inverse">
            <ul class=" container">
                <li class="li_list"><a href="../html/index.jsp" style="color:#428bca">首页</a></li>
                <li class="li_list"><a href="../html/aboutReturning.jsp">走进蕊藤</a></li>
                <li class="li_list"><a href="https://h5.youzan.com/v2/showcase/homepage?alias=2pu9r94z&redirect_count=2">在线农墟</a></li>
                <li class="li_list"><a href="index_show_news.action">资讯动态</a></li>
                <li class="li_list"><a href="#">主题活动</a></li>
                <li class="li_list"><a href="#">觅食之旅</a></li>
                <li class="li_list"><a href="#">耕读空间</a></li>
                <li class="li_list"><a href="https://m.realfarm.cn/app/wx/?f=268&h=/app/farms/268/yard#/app/farms/268/yard
">会员专区</a></li>
                <li class="li_list"><a href="../html/contact.jsp">联系我们</a></li>
            </ul>
        </div>

    </header><!-- /header -->
    <!-- main -->
    <main>
        <!-- 轮播图开始 -->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox" id="boarder_picture">
                <c:forEach items="${sessionScope.boarder}" var="bd" varStatus="num">
                <c:if test="${ num.index%2 == 0}">               
                <div class="item active">
                    <img src="${bd.address}" alt="播放片_${num.index+1}">
                    <div class="carousel-caption">

                    </div>
                </div>              
                </c:if>
                <c:if test="${ num.index%2 != 0}">               
                <div class="item">
                    <img src="${bd.address}" alt="播放片_${num.index+1}">
                    <div class="carousel-caption">

                    </div>
                </div>              
                </c:if>
                </c:forEach>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"><</span>
                <span class="sr-only">Previous</span>

            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true">></span>
                <span class="sr-only">Next</span>

            </a>
        </div>
        <!-- 轮播图结束 -->
        <!-- 经营理念 -->
        <div class="container ideas" >
            <ul id="idea" class="clearfix">
                <li>
                    <div>
                       <i></i>
                        <span>公开透明，保障安全</span>
                    </div>

                </li>
                <li>
                    <div>
                       <i></i>
                        <span>生态种植，传统农耕</span>
                    </div>
                </li>
                <li>
                    <div>
                       <i></i>
                        <span>监督机制,PGS参与式保障</span>
                    </div>
                </li>
            </ul>
            <ul id="func">
                <li>
                    <p><a href=""><img src="../image/product.jpg" alt=""></a></p>
                    <h4><a href="">今日产品</a></h4>
                </li>
                <li>
                    <p><a href=""><img src="../image/vip.jpg" alt=""></a></p>
                    <h4><a href="">会员服务</a></h4>
                </li>
                <li>
                    <p><a href=""><img src="../image/taocan3.jpg" alt=""></a></p>
                    <h4><a href="">安心承诺</a></h4>
                </li>
                <li>
                    <p><a href=""><img src="../image/address.jpg" alt=""></a></p>
                    <h4><a href="">农场介绍</a></h4>
                </li>
            </ul>
        </div>
        <!-- 联系我们 -->
        <div id="contact" class="container">
            <div class="item">
                <p>客服电话</p>
                <h3 class='tel'>0731-89911446</h3>
                <p class="telTime">周一到周六 9:00-18:00</p>
                <div class="qqChat">
                    <img src="../image/qq.gif" alt="">
                </div>
            </div>
            <div class="item">
                <p>有点田生态农耕</p>
                <p class="ourIdea">(1).公开透明种植，参与保障安全<br />(2)坚持生态种植，传承传统农耕<br />(3)监督机制 PGS参与式保障</p>
                <div class="focus">
                    <span>关注我们:</span>
                    <i></i>
                    <div class="focusWeixin">
                        <p>扫一扫,关注微信</p>
                        <p>获得更多优惠</p>
                        <img src="../image/qrcode_for_gh_f4e92d76a474_344.jpg" witdh='102' height="102">
                    </div>
                </div>
            </div>
            <div class="item">
                <p>扫码关注蕊藤有点田</p>
                <img src="../image/qrcode_for_gh_f4e92d76a474_344.jpg" witdh='102' height="102">
            </div>
        </div>
    </main>
    <footer>

    </footer>
</body>
</html>