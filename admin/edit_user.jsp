<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>编辑管理员资料</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
 <!-- 提示信息 -->
 <c:if test="${ ! empty (info) }">
 alert(${requestScope.info});
 </c:if>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="edit_user"></i><em>编辑管理员资料</em></span>
  </div>
  <form action="edit_user.action"  method="post">
  <table class="list-style">
   <tr>
    <td style="width:15%;text-align:right;">管理员账号</td>
    <td><input type="text" name="username" class="textBox length-middle" value="${user.username}" readonly/></td>
   </tr>
   <tr>
    <td style="text-align:right;">注册时间：</td>
    <td><input type="text" class="textBox length-middle" value="${user.registertime}" disabled/></td>
   </tr>
   <tr>
    <td style="text-align:right;">最后一次登录时间：</td>
    <td>
     <input type="text" class="textBox length-middle" value="${user.lastLogin}" disabled="disabled"/>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;">管理员等级：</td>
    <td>
     <select class="textBox" name="usertype">
      <c:choose>
      <c:when test="${user.usertype==0}">
      <option  value="0" selected>普通管理员</option>
      <option  value="1">高级管理员</option>
      </c:when>
      <c:otherwise>
      <option value="0" >普通管理员</option>
      <option value="1" selected>高级管理员</option>
      </c:otherwise>
      </c:choose>
     </select>
    </td>
   </tr>
   <tr>
    <td style="text-align:right;"></td>
    <td><input type="submit" class="tdBtn" value="更新保存"/></td>
   </tr>
  </table>
  </form>
 </div>
</body>
</html>