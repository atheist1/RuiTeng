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
    <title>走进蕊藤</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" type="text/css" href="../css/aboutReturning.css">
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
                <li class="li_list"><a href="index.jsp" >首页</a></li>
                <li class="li_list"><a href="aboutReturning.jsp" style="color:#428bca">走进蕊藤</a></li>
                <li class="li_list"><a href="https://h5.youzan.com/v2/showcase/homepage?alias=2pu9r94z&redirect_count=2">在线农墟</a></li>
                <li class="li_list"><a href="index_show_news.action">资讯动态</a></li>
                <li class="li_list"><a href="#">主题活动</a></li>
                <li class="li_list"><a href="#">觅食之旅</a></li>
                <li class="li_list"><a href="#">耕读空间</a></li>
                <li class="li_list"><a href="https://m.realfarm.cn/app/wx/?f=268&h=/app/farms/268/yard#/app/farms/268/yard
">会员专区</a></li>
                <li class="li_list"><a href="contact.jsp">联系我们</a></li>
            </ul>
        </div>

    </header><!-- /header -->
    <main id="content">
        <div id="posNav">
            <div class="row1">
                <div class="row">
                    <ul class="clearfix">
                        <li><a href="index.jsp">首页></a></li>

                        <li><a href="aboutReturning.jsp">走进蕊藤</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="about" class="container clearfix">
            <div class = 'col-md-3 col-sm-2 fl aboutLeft'>
                <div id="title">
                    关于我们
                </div>
                <dl>
                    <dt><a href="CSADesc.jsp">CSA农场</a></dt>
                    <dd><a href="CSAIdea.jsp">CSA理念</a></dd>
                    <dd><a href="aboutReturning.jsp" class="on">农场介绍</a></dd>
                    <dd><a href="Picture_showPictureAlbum.action?albumid=2">农场风光</a></dd>
                    <dd><a href="Album_showAllAlbum.action">相册展示</a></dd>
                    <!-- <dt><a href="#">农场主寄语</a></dt> -->
                    <dt><a href="index_show_news.action">农场新闻</a></dt>
                    <dt><a href="CSAIdea.jsp">关于蕊藤</a></dt>
                    <dd><a href="contact.jsp">联系我们</a></dd>
                </dl>
            </div>
            <div class = 'col-md-9 col-sm-10 fr aboutRight'>
                    <div class="content1 clearfix">
                        <h1>走进蕊藤</h1>
                        <img src="../image/mmexport1501831426456.jpg" alt="">
                        <div class="first">长沙蕊藤农业科技有限公司办公室地址位于长江中游地区重要的中心城市、湖南省省会长沙，湖南省长沙市岳麓区桔子洲街道潇湘大道中段天马村大学科技园创业大厦B4508，于2014年01月28日在长沙工商局注册成立，在公司发展壮大的4年里，我们始终为客户提供好的产品和技术支持、健全的售后服务，我公司主要经营农业，我们有好的产品和专业的销售和技术团队，我公司是长沙农业公司行业内知名企业，如果您对我公司的产品服务有兴趣，期待您在线留言或者来电咨询。</div>
                    </div>
                    <div class="content2">
                        <h1>有点田生态农耕</h1>

                        <img src="../image/mmexport1505029983939.jpg" alt="">
                        <img src="../image/mmexport1505029985989.jpg" alt="">
                        <div class="first">地址:湖南省长沙市捞刀河镇大星村有点田生态农耕基地</div>
                    </div>
            </div>
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
</body>
</html>