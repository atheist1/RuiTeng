<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<head>
<title>编辑相册</title>
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
</head>

<body>
 <div class="wrap">

  <div class="page-title">
    <span class="modular fl"><a href="Album_showAlbum.action?jumpPage=${curpage}" class="pt-link-btn">返回</a></span>
  </div>
  <div class="page-title fl">
    <span class="modular fr"><i class="add_user"></i><em>编辑相册</em></span>
  </div>

  <form action="Album_modifyAlbum.action" method="post">
  <table class="list-style">
   <tr>
    <td style="width:15%;text-align:right;">相册ID</td>
    <td><input type="text" disabled="disabled" class="textBox length-middle" value="${album.albumid }" >
    <input type="hidden" name="albumVo.albumid" class="textBox length-middle" value="${album.albumid }" >
    </td>
   </tr>
   <tr>
    <td style="width:15%;text-align:right;">相册类型</td>
    <td>
	    <select class="textBox" id="select" name="albumVo.albumtypeid">
	    
	    <c:forEach items="${allTypeList }" var="al" varStatus="status">
	    	<c:choose>
	    	<c:when test="${al.albumtypeid eq album.albumtypeid}">
	    		<option selected="selected" value="${al.albumtypeid }" >${al.albumtype }</option>
	    	</c:when>
	    	<c:otherwise>
	    		<option value="${al.albumtypeid }" >${al.albumtype }</option>
	    	</c:otherwise>
	    	</c:choose>
	    </c:forEach>
	    </select>
    </td>
   </tr>
   <tr>
    <td style="width:15%;text-align:right;">相册名字</td>
    <td><input type="text" name="albumVo.albumname" class="textBox length-middle" value="${album.albumname }" /></td>
   </tr>
   <tr>
    <td style="width:15%;text-align:right;">相册描述</td>
    <td><input type="text" name="albumVo.albumdesc" class="textBox length-middle" value="${album.albumdesc }" /></td>
   </tr>
      <tr>
    <td style="width:15%;text-align:right;">创建时间</td>
    <td><input type="text" disabled="disabled" name="albumtime" class="textBox length-middle"value="${album.albumtime }"/>
    	<input type="hidden" name="albumVo.albumtime" class="textBox length-middle" value="${album.albumtime }" >
    </td>
   </tr>
   <tr>
    <td style="width:15%;text-align:right;">创建人ID</td>
    <td><input type="text" disabled="disabled" name="albumVo.userid" class="textBox length-middle" value="${album.userid }" />
    <input type="hidden" name="albumVo.userid" class="textBox length-middle" value="${album.userid }" /></td>
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