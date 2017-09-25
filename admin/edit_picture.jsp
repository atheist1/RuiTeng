<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<head>
<title>编辑相片</title>
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
</head>

<body>
 <div class="wrap">

  <div class="page-title">
    <span class="modular fl"><a href="Picture_showPicture.action?jumpPage=${curpage}" class="pt-link-btn">返回</a></span>
  </div>
  <div class="page-title fl">
    <span class="modular fr"><i class="add_user"></i><em>编辑相片</em></span>
  </div>

  <form action="Picture_modifyPicture.action" method="post">
  <table class="list-style">
   <tr>
    <td style="width:15%;text-align:right;">相册名字</td>
    <td><select class="textBox" id="select" name="pictureVo.albumid">
	    
	    <c:forEach items="${allAlbumList }" var="al" varStatus="status">
	    	<c:choose>
	    	<c:when test="${al.albumid eq picture.albumid}">
	    		<option selected="selected" value="${al.albumid }" >${al.albumname }</option>
	    	</c:when>
	    	<c:otherwise>
	    		<option value="${al.albumid }" >${al.albumname }</option>
	    	</c:otherwise>
	    	</c:choose>
	    </c:forEach>
	    </select>
	</td>
   </tr>
   
    
   <tr>
    <td style="width:15%;text-align:right;">相片ID</td>
    <td>
	<input type="text" disabled="disabled" class="textBox length-middle" value="${picture.pictureid }" >
    <input type="hidden" name="pictureVo.pictureid" class="textBox length-middle" value="${picture.pictureid }" >
    </td>
   </tr>
   <tr>
    <td style="width:15%;text-align:right;">相片预览</td>
    <td><img style="max-width: 450px;max-height: 450px;" alt="${picture.picturename }" src="${picture.picturename }">
    <input type="hidden" name="pictureVo.picturename" class="textBox length-middle" value="${picture.picturename }" /></td>
   </tr>
   <tr>
    <td style="width:15%;text-align:right;">相片描述</td>
    <td>
    <input type="text" name="pictureVo.picturedesc" class="textBox length-middle" value="${picture.picturedesc }" /></td>
   </tr>
      <tr>
    <td style="width:15%;text-align:right;">上传时间</td>
    <td><input type="text" disabled="disabled" name="albumtime" class="textBox length-middle"value="${picture.uploadtime }"/>
    	<input type="hidden" name="pictureVo.uploadtime" class="textBox length-middle" value="${picture.uploadtime }" >
    </td>
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