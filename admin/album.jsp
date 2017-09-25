<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>相册类型管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js"></script>
<script src="js/public.js"></script>
</head>

<script type="text/javascript">

	function delete_album(id){
		if(id != null){
			if(confirm('是否确定删除该项?')){
			   jQuery.ajax({
	  			type:"post",
	  			url:"Album_deleteAlbum.action",
	  			data:"albumid="+id,
	  			async:true,
	  			success:function(d){
	  				if(d>0){
	  					alert("刪除成功！");
	  					location.reload(true);
	  				}else{
	  					alert("刪除失败！");
	  					location.reload(true);
	  				}
	  			}
	  		});
			}
		}	
	}
</script>

<body>
<c:if test="${ ! empty ( msg ) }">
 <script>
  alert( '${msg}' );
  location = "Album_showAlbum.action?jumpPage="+${curpage};
 </script>
 </c:if>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="user"></i><em>相片列表</em></span>
    <span class="modular fr"><a href="AlbumType_showAllAlbumType.action" class="pt-link-btn">+添加相册</a></span>
  </div>
	<br>
  <table class="list-style Interlaced">

   <tr>
   	 <!-- th>顺序</th -->
     <th>相册ID</th>
     <th>类别名</th>
     <th>相册名字</th>
     <th>相册描述</th>
     <th>创建时间</th>
     <th>创建人ID</th>
     <th>操作</th>
   </tr>
   <c:forEach items="${albumlist }" var="al">
	   <tr>
	    <!-- td class="center">${al.rownumber }</td -->
	    <td class="center">${al.albumid }</td>
	    <td class="center">${al.albumtype }</td>
	    <td class="center">${al.albumname }</td>
	    <td class="center">${al.albumdesc }</td>
	    <td class="center">${al.albumtime }</td>
	    <td class="center">${al.userid }</td>
	    <td class="center">
	     <a href="Album_selectAlbumById.action?albumid=${al.albumid }&jumpPage=${page.curPage }" class="inline-block" title="编辑"><img src="images/icon_edit.gif"/></a>
	     <a href="javascript:delete_album(${al.albumid })" class="inline-block" title="删除"><img src="images/icon_drop.gif"/></a>
	    </td>
	   </tr>
   </c:forEach>
  </table>
  <!-- BatchOperation -->
  <div style="overflow:hidden;">
	    <div class="total center fl">
	    	<br>
			总共 <strong>${page.maxPage }</strong>页&nbsp;&nbsp;&nbsp; 
			当前第 <strong>${page.curPage }</strong> 页&nbsp;&nbsp;&nbsp; 
			总共&nbsp;<strong>${page.maxCount }</strong> 条&nbsp;&nbsp;&nbsp;
			 每页显示 <strong>${page.rowPreCount }</strong>&nbsp;&nbsp;&nbsp;行
		</div>
		<div class="turnPage center fr">
			<a href="Album_showAlbum.action?jumpPage=1">首页</a>&nbsp;&nbsp;&nbsp;
			<a
			href="Album_showAlbum.action?jumpPage=${page.curPage - 1 }">前一页</a>&nbsp;&nbsp;&nbsp;
			<a
			href="Album_showAlbum.action?jumpPage=${page.curPage + 1}">后一页</a>&nbsp;&nbsp;&nbsp;
			<a
			href="Album_showAlbum.action?jumpPage=${page.maxPage }">尾页</a>&nbsp;&nbsp;&nbsp;
	    </div>
	  </div>

 </div>
</body>
</html>