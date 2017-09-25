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

	if( ${ ! empty ( msg ) } ){
  	   alert( '${msg}' );
  	   location = "AlbumType_showAlbumType.action?jumpPage="+${curpage};
  	}
	/*jQuery().ready(function(){
		jQuery(".pt-link-btn").click(function(){
			$("#add_albumtype").toggle();
		});
	});
	
	function add_albumtype(){
		jQuery("#add_albumtype").removeAttr("style");
	}*/
	function delete_albumtype(id){
		if(id != null){
			if(confirm('是否确定删除该项?')){
			   jQuery.ajax({
	  			type:"post",
	  			url:"AlbumType_deleteAlbumType.action",
	  			data:"albumtypeid="+id,
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
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="user"></i><em>相册类型列表</em></span>
    <span class="modular fr"><a href="add_albumtype.jsp" class="pt-link-btn">+添加相册类型</a></span>
  </div>
	<br>
  <table class="list-style Interlaced">

   <tr>
   	 <!-- th>顺序</th -->
     <th>类别ID</th>
     <th>类别名</th>
     <th>操作</th>
   </tr>
   <c:forEach items="${albumtypelist }" var="at">
	   <tr>
	    <!-- td class="center">${at.rownumber }</td -->
	    <td class="center">${at.albumtypeid }</td>
	    <td class="center">${at.albumtype }</td>
	    <td class="center">
	     <a href="AlbumType_selectAlbumTypeById.action?albumtypeid=${at.albumtypeid }&jumpPage=${page.curPage }" class="inline-block" title="编辑"><img src="images/icon_edit.gif"/></a>
	     <a href="javascript:delete_albumtype(${at.albumtypeid })" class="inline-block" title="删除"><img src="images/icon_drop.gif"/></a>
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
			总共<strong>${page.maxCount }</strong> 条&nbsp;&nbsp;&nbsp;
			 每页显示 <strong>${page.rowPreCount }</strong>&nbsp;&nbsp;&nbsp;行
		</div>
		<div class="turnPage center fr">
			<a href="AlbumType_showAlbumType.action?jumpPage=1">首页</a>&nbsp;&nbsp;&nbsp;
			<a
			href="AlbumType_showAlbumType.action?jumpPage=${page.curPage - 1 }">前一页</a>&nbsp;&nbsp;&nbsp;
			<a
			href="AlbumType_showAlbumType.action?jumpPage=${page.curPage + 1}">后一页</a>&nbsp;&nbsp;&nbsp;
			<a
			href="AlbumType_showAlbumType.action?jumpPage=${page.maxPage }">尾页</a>&nbsp;&nbsp;&nbsp;
	    </div>
	  </div>

 </div>
</body>
</html>