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
    <title>CSA农场</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/aboutReturning.css">
    <link rel="stylesheet" href="../css/CSA.css">
    <script src="../js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="../js/index.js"></script>
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
                <li class="li_list"><a href="../html/contact.html">联系我们</a></li>
            </ul>
        </div>

    </header><!-- /header -->
    <!-- main -->
    <main id="content">
        <div id="posNav">
            <div class="row1">
                <div class="row">
                    <ul class="clearfix">
                        <li><a href="./index.jsp">首页&nbsp;></a></li>
                        <li><a href="./aboutReturning.jsp">走进蕊藤&nbsp;></a></li>
                         <li><a href="./CSADesc.jsp">CSA农场</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="about" class="container clearfix">
            <div class = 'col-md-3 fl aboutLeft'>
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
            <div class = 'col-md-9 fr aboutRight'>
                    <div class="content1 clearfix">
                        <h1>CSA理念</h1>
                        <div class='csaContent'>
                            <p class="csaTit">1.什么是社区支持农业CSA？</p>
                            <p class="zhengwen">社区支持农业（Community Supported Agriculture, CSA）上个世纪六十年代最早出现在德国、瑞士和日本，八十年代出现在美国。最初的出现是因为对于食品安全和对于城市化过程中对土地的关注。生产者和消费者之间建立一种共担风险、共享收益的关系，消费者会预付生产费用与生产者共同承担在来年农业种植过程中可能会出现的风险并支持使用生态可持续的种植方式，与以往的收益方式不同，生产者在季节之初就获得了这一年种植的收益，并且这部分收益对生产者付出的劳动来说是公平的，而与此同时，消费者也获得了生态种植的健康农产品。 您知道您吃的东西从何而来，支持了本地区的经济，还可以在蔬菜上看到农夫的脸。</p>
                            <p class="csaTit">2.什么是社区支持农业CSA？</p>
                            <p class="zhengwen">社区支持农业（Community Supported Agriculture, CSA）上个世纪六十年代最早出现在德国、瑞士和日本，八十年代出现在美国。最初的出现是因为对于食品安全和对于城市化过程中对土地的关注。生产者和消费者之间建立一种共担风险、共享收益的关系，消费者会预付生产费用与生产者共同承担在来年农业种植过程中可能会出现的风险并支持使用生态可持续的种植方式，与以往的收益方式不同，生产者在季节之初就获得了这一年种植的收益，并且这部分收益对生产者付出的劳动来说是公平的，而与此同时，消费者也获得了生态种植的健康农产品。 您知道您吃的东西从何而来，支持了本地区的经济，还可以在蔬菜上看到农夫的脸。</p>
                        </div>

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