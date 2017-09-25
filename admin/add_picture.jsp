<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="struts" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<head>
<title>添加照片</title>
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="js/addphoto.js"></script>
</head>
<body>
<c:if test="${ ! empty ( msg ) }">
 <script>
  alert( '${msg}' );
  location = "Picture_showAlbum.action";
 </script>
 </c:if>
 <div class="wrap">

  <div class="page-title">
    <span class="modular fl"><a href="Picture_showPicture.action?jumpPage=1" class="pt-link-btn">返回</a></span>
  </div>
  <div class="page-title fl">
    <span class="modular fr"><i class="add_user"></i><em>添加照片</em></span>
  </div>
  <form action="Picture_addPicture.action" method="post" enctype="multipart/form-data">
  <table class="list-style">
   <tr>
    <td style="width:15%;text-align:right;">选择相册</td>
    <td>
	    <select class="textBox" id="select" name="albumid">
	    
	    <c:forEach items="${albumList }" var="al" varStatus="status">
	    	<option value="${al.albumid }" >${al.albumname }</option>
	    </c:forEach>
	    </select>
    </td>
   </tr>
   <tr>
   <td style="width:15%;text-align:right;">选择照片</td>
    <td><input type="file" name="pictureaddress" id="doc" multiple onchange="javascript:setImagePreviews();" accept="image/*" ></td>
    
   </tr>
   <tr>
	   <td style="width:15%;text-align:right;">照片浏览</td>
	   <td><div id="dd" style=" width:96%;"></div></td>
   </tr>
   <tr>
    <td style="text-align:right;">操作</td>
    <td><input type="submit" class="tdBtn" value="添加照片"/></td>
   </tr>
  </table>
  </form>
 </div>
</body>
</html>