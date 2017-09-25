﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>后台管理中心起始页面</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
<style>html,body{width:100%;height:100%;}</style>
<script src="js/jquery.js"></script>
<script src="js/eject.js"></script>
<script src="js/public.js"></script>
</head>
<body>
<div class="wrap start-page">
 <h1><i class="home-icon"></i>蕊藤门户网站后台管理</h1>
 <dl>
  <dt>订单统计信息</dt>
  <dd>
   <ul>
    <li>
     <span>待发货订单：</span>
     <span>539</span>
    </li>
    <li>
     <span>未确认订单：</span>
     <span>23</span>
    </li>
    <li>
     <span>已成交订单：</span>
     <span>1282</span>
    </li>
   </ul>
  </dd>
 </dl>
 
 <dl>
  <dt>商户统计信息</dt>
  <dd>
   <ul>
    <li>
     <span>店铺总数量：</span>
     <span>1252</span>
    </li>
    <li>
     <span>商品总数量：</span>
     <span>13252</span>
    </li>
    <li>
     <span>在线实时交易总计：</span>
     <span>1282.00元</span>
    </li>
    <li>
     <span>酒吧类店铺：</span>
     <span>128家</span>
    </li>
    <li>
     <span>家政服务类店铺：</span>
     <span>300家</span>
    </li>
    <li>
     <span>外卖类店铺：</span>
     <span>458家</span>
    </li>
   </ul>
  </dd>
 </dl>

 <dl>
  <dt>访问统计</dt>
  <dd>
   <ul>
    <li>
     <span>今日访问：</span>
     <span>1356</span>
    </li>
    <li>
     <span>当前在线人数：</span>
     <span>98</span>
    </li>
    <li>
     <span>最新留言：</span>
     <span>1</span>
    </li>
   </ul>
  </dd>
 </dl>
 

</div>
</body>
</html>