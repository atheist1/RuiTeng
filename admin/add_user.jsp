<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>添加管理员</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="js/jquery3.2.1.js"></script>
<script src="js/user/adduser.js"></script>
</head>
<body>
<!-- 提示信息 -->
   <c:if test="${! empty(info)}">
    <script>
    alert('${requestScope.info}');
    </script>
   </c:if>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="add_user"></i><em>添加管理员</em></span>
  </div>
  <form action="addUser.action" method="post" onsubmit="return confuser()">
  <table class="list-style">
   <tr>
    <td style="width:15%;text-align:right;">管理员账号：</td>
    <td><input id="username" type="text" name="user.username" class="textBox length-middle" onblur="wpwd()" autocomplete="off" required/><span id="user"></span></td>
   </tr>
   <tr>
    <td style="text-align:right;">设置密码：</td>
    <td><input id="pwd" type="text" name="user.password" class="textBox length-middle" maxlength="11" required placehold="默认密码为账号"/></td>
   </tr>
   <tr>
    <td style="text-align:right;">管理员类别：</td>
    <td>
    <select class="inline-select" name="user.usertype">
     <option value="0" selected>普通管理员</option>
     <option value="1">高级管理员</option>
    </select>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td><input type="submit" class="tdBtn" value="添加新管理员"/></td>
   </tr>
  </table>
  </form>
 </div>
</body>
</html>