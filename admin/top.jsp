<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>header</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="header">
 <div class="logo">
 <img src="../image/mmexport1501831427716.png" alt="图标">
 </div>
 <div class="fr top-link">
  <a href="index_show_ppt.action" target="_blank" title="蕊藤门户网站"><i class="shopLinkIcon"></i><span>访问官网</span></a>
  <a href="admin_list.html" target="mainCont" title="DeathGhost"><i class="adminIcon"></i><span>管理员:${sessionScope.user.username}</span></a>
  <a href="revise_password.jsp" target="mainCont" title="修改密码"><i class="revisepwdIcon"></i><span>修改密码</span></a>
  <a href="../index.jsp" title="安全退出" style="background:rgb(60,60,60);" target="_top"><i class="quitIcon"></i><span>安全退出</span></a>
 </div>
</div>
</body>
</html>