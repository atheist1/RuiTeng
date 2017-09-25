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
 <div class="wrap">
 <c:if test="${ ! empty ( msg ) }">
 <script>
  alert( '${msg}' );
  location = "AlbumType_showAllAlbumType.action";
 </script>
 </c:if>
  <div class="page-title">
    <span class="modular fl"><a href="Album_showAlbum.action?jumpPage=1" class="pt-link-btn">返回</a></span>
  </div>
  <div class="page-title fl">
    <span class="modular fr"><i class="add_user"></i><em>添加相册</em></span>
  </div>

  <form action="Album_addAlbum.action" method="post">
  <table class="list-style">
   <tr>
    <td style="width:15%;text-align:right;">相册类型</td>
    <td>
	    <select class="textBox" id="select" name="albumVo.albumtypeid">
	    
	    <c:forEach items="${allTypeList }" var="al" varStatus="status">
	    	<option value="${al.albumtypeid }" >${al.albumtype }</option>
	    </c:forEach>
	    </select>
    </td>
   </tr>
   <tr>
    <td style="width:15%;text-align:right;">相册名字</td>
    <td><input type="text" name="albumVo.albumname" class="textBox length-middle"/></td>
   </tr>
   <tr>
    <td style="width:15%;text-align:right;">相册描述</td>
    <td><input type="text" name="albumVo.albumdesc" class="textBox length-middle"/></td>
   </tr>
   <tr>
    <td style="width:15%;text-align:right;">创建人ID</td>
    <td><input type="text" disabled="disabled" name="albumVo.userid" class="textBox length-middle" value="${userid }" />
    <input type="hidden" name="albumVo.userid" class="textBox length-middle" value="${userid }" /></td>
   </tr>
   <tr>
    <td style="text-align:right;">操作</td>
    <td><input type="submit" class="tdBtn" value="添加相册"/></td>
   </tr>
  </table>
  </form>
 </div>
</body>
</html>