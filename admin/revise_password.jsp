<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>修改密码</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="js/jquery3.2.1.js"></script>
<script src="js/user/user.js"></script>
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
    <span class="modular fl"><i class="user"></i><em>修改密码</em></span>
  </div>
  <form action="updatePwd.action" method="post" onsubmit ="return validate()">
  <table class="noborder">
   <tr>
    <td width="15%" style="text-align:right;">账号：</td>
    <td><input type="text" id="username" name="username" value="${user.username}" class="textBox length-middle" autocomplete="off" readonly/></td>
   </tr>
   <tr>
    <td style="text-align:right;">旧密码：</td>
    <td><input id="pwd" type="password" class="textBox length-middle" onblur="validateOld()"/><span id="old"></span></td>
   </tr>
   <tr>
    <td style="text-align:right;">新密码：</td>
    <td><input id="newpwd" name="pwd" type="password" class="textBox length-middle" maxlength="11" required/></td>
   </tr>
   <tr>
    <td style="text-align:right;">再次确认密码：</td>
    <td><input id="confpwd" type="password" class="textBox length-middle" maxlength="11" onchange="validateDb()" onblur="validateDb()"/><span id="conf"></span></td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td><input type="submit" class="tdBtn" value="保存" style="position:relative;margin-left:38px"/>
    
    <input type="reset" class="tdBtn" value="重置" style="position:relative;margin-left:38px"/></td>
   </tr>
  </table>
  </form>
 </div>
</body>
</html>