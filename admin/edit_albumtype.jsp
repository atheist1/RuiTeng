<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<head>
<title>编辑相册类型</title>
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
</head>

<body>
 <div class="wrap">

  <div class="page-title">
    <span class="modular fl"><a href="AlbumType_showAlbumType.action?jumpPage=${curpage}" class="pt-link-btn">返回</a></span>
  </div>
  <div class="page-title fl">
    <span class="modular fr"><i class="add_user"></i><em>编辑相册类型</em></span>
  </div>

  <form action="AlbumType_modifyAlbumType.action" method="post">
  <table class="list-style">
   <tr>
    <td style="width:15%;text-align:right;">相册类型ID</td>
    <td><input type="text" disabled="disabled" class="textBox length-middle" value="${albumtype.albumtypeid }" >
    <input type="hidden" name="albumTypeVo.albumtypeid" class="textBox length-middle" value="${albumtype.albumtypeid }" >
    </td>
   </tr>
   <tr>
    <td style="width:15%;text-align:right;">相册类型</td>
    <td><input type="text" name="albumTypeVo.albumtype" class="textBox length-middle" value="${albumtype.albumtype }" /></td>
   </tr>
   <tr>
    <td style="text-align:right;">操作</td>
    <td><input type="submit" class="tdBtn" value="确认更改"/></td>
   </tr>
  </table>
  </form>
 </div>
</body>
</html>