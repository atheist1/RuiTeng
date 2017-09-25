<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>左侧导航</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js"></script>
<script src="js/public.js"></script>
</head>
<body style="background:#313131">
<div class="menu-list">
 <a href="main.jsp" target="mainCont" class="block menu-list-title center" style="border:none;margin-bottom:8px;color:#fff;">起始页</a>
 <ul>
  <li class="menu-list-title">
   <span>管理员管理</span>
  </li>
  <li>
   <!-- 管理员权限 -->
   <c:if test="${user.usertype==1}">
   <ul class="menu-children">
    <li><a href="user_list.jsp" title="管理员列表" target="mainCont">管理员列表</a></li>
   </ul>
   </c:if>
  </li>
 
  <li class="menu-list-title">
   <span>新闻管理</span>
   <i>◢</i>
  </li>
  <li>
   <ul class="menu-children">
    <li><a href="distribute_show_news.action?currPage=1" title="查看新闻" target="mainCont">查看新闻</a></li>
    <li><a href="addnews.jsp" title="添加新闻" target="mainCont">添加新闻</a></li>
   </ul>
  </li>
  
  <li class="menu-list-title"><span>相册管理</span> <i>◢</i></li>
			<li>
				<ul class="menu-children">
					<li><a href="AlbumType_showAlbumType.action?jumpPage=1" title="相册类型管理" target="mainCont">相册类型</a></li>
					<li><a href="Album_showAlbum.action?jumpPage=1" title="相册管理" target="mainCont">相册管理</a></li>
					<li><a href="Picture_showPicture.action?jumpPage=1" title="相册管理" target="mainCont">照片管理</a></li>
				</ul>
			</li>
  <li class="menu-list-title">
   <span>广告管理</span>
   <i>◢</i>
  </li>
  <li>
   <ul class="menu-children">
    <li><a href="show_ppt.action" title="广告列表" target="mainCont">广告列表</a></li>
   </ul>
  </li>
 </ul>
</div>
</body>
</html>