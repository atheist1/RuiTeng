<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<head>
<title>添加相册类型</title>
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
</head>


<body>
<c:if test="${ ! empty ( msg ) }">
 <script>
  alert( '${msg}' );
 </script>
 </c:if>
 <div class="wrap">

  <div class="page-title">
    <span class="modular fl"><a href="AlbumType_showAlbumType.action?jumpPage=1" class="pt-link-btn">返回</a></span>
  </div>
  <div class="page-title fl">
    <span class="modular fr"><i class="add_user"></i><em>添加相册类型</em></span>
  </div>

  <form action="AlbumType_addAlbumType.action" method="post">
  <table class="list-style">
   <tr>
    <td style="width:15%;text-align:right;">相册类型</td>
    <td><input type="text" name="albumTypeVo.albumtype" class="textBox length-middle"/></td>
   </tr>
   <tr>
    <td style="text-align:right;">操作</td>
    <td><input type="submit" class="tdBtn" value="添加类型"/></td>
   </tr>
  </table>
  </form>
 </div>
</body>
</html>