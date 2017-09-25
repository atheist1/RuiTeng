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
    <title>农场风光</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/aboutReturning.css">
    <link rel="stylesheet" href="../css/CSA.css">
    <script src="../js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="../js/index.js"></script>
    <script type="text/javascript" src='../js/jiaoben2512/layer/layer.min.js'></script>
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
                         <li><a href="./farmsScenery.jsp">农场风光</a></li>
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
                    <dd><a href="aboutReturning.jsp">农场介绍</a></dd>
                   <dd><a href="Picture_showPictureAlbum.action?albumid=2" class="on">农场风光</a></dd>
                    <dd><a href="Album_showAllAlbum.action">相册展示</a></dd>
                    <!-- <dt><a href="#">农场主寄语</a></dt> -->
                    <dt><a href="index_show_news.action">农场新闻</a></dt>
                    <dt><a href="CSAIdea.jsp">关于蕊藤</a></dt>
                    <dd><a href="contact.jsp">联系我们</a></dd>
                </dl>
            </div>
            <div class = 'col-md-9 fr aboutRight'>
                    <div class="content1 clearfix">
                        <h1>农场风光</h1>
                        <div id="imgs" class="imgs" >
                            <ul class="imgList">
                               <c:forEach items="${pictureAlbumList }" var="pi" varStatus="num">
                                <li class="list">
                                    <img src="${pi.picturename }" alt="" class="imgListimg"  data-id="${num.index}">
                                    <input type="hidden" class="desc${num.index}" value="${pi.picturedesc}"/>
                                  
                                </li>
                            </c:forEach>
                            </ul>
                        </div>

                    </div>

            </div>
            <script type="text/javascript">
            	$('.imgListimg').on('click',function(){
            		var item = $(".desc"+$(this).attr('data-id'));
            		console.log(item.val())
            	})
            </script>	
            <script type="text/javascript">
            	
                (function(){

                    layer.use('extend/layer.ext.js', function(){
                        //初始加载即调用，所以需放在ext回调里
                        layer.ext = function(){
                            layer.photosPage({
                                html:"<div style='padding:20px;'><br/>"+33+"</p><p id='change'></p></div>",
                                title: '农场风光',
                                id: 100, //相册id，可选
                                parent:'#imgs'
                            })(item);
                        };
                    });
                    })();
            </script>
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