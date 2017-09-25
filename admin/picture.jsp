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
<title>照片管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js"></script>
<script src="js/public.js"></script>
</head>

<style>
.wrap {
    position:relative;
}
.inner {
    display:none;
    position:absolute; top:30px; left:100px;
    width:100px; height:100px;
    border:0px solid #000;
    background:#fff;
}
</style>

<script type="text/javascript">
	/*jQuery().ready(function(){
		$("div[picture]").bind("mouseover",function(){
			$("#picture").css("display","");
		});
		$("div[picture]").bind("mouseout",function(){
			$("#picture").css("display","none");
		});
		$("div[id^='showPicture_'").mouseover(function(){
			$("div[id^='picture_'").css("display","");
		});
		$("div[id^='showPicture_'").mouseout(function(){
			$("div[id^='picture_'").css("display","none");
		});
	});*/
	
	function showPicture(id){
		var spid="#showPicture_"+id;
		var piid="#picture_"+id;
		$(piid).css("display","");
		$(spid).mouseover(function(){
			$(piid).css("display","");
		});
		$(spid).mouseout(function(){
			$(piid).css("display","none");
		});
		
	}
	
	/*function add_albumtype(){
		jQuery("#add_albumtype").removeAttr("style");
	}*/
	function delete_picture(id){
		if(id != null){
			if(confirm('是否确定删除该项?')){
			   jQuery.ajax({
	  			type:"post",
	  			url:"Picture_deletePicture.action",
	  			data:"pictureid="+id,
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
    location = "Picture_showPicture.action?jumpPage="+${curpage};
 </script>
 </c:if>
 <div class="wrap">
  <div class="page-title">
    <span class="modular fl"><i class="user"></i><em>照片列表</em></span>
    <span class="modular fr"><a href="Picture_showAlbum.action" class="pt-link-btn">+添加照片</a></span>
  </div>
	<br>
  <div class="operate">
   <form action="Picture_showPictureByAlbum.action?jumpPage=1" method="post">
    <select class="inline-select" name="album">
     <option value="0">显示全部</option>
     <c:forEach items="${albumList }" var="al" varStatus="status">
    	<option value="${al.albumid }" >${al.albumname }</option>
    </c:forEach>
    </select>
    <input type="submit" value="查询" class="tdBtn"/>
   </form>
  </div>
  <br>
  <table class="list-style Interlaced">

   <tr>
   	 <th>相册名字</th>
     <th>相片ID</th>
     <th>相片描述</th>
     <th>相册名字(点击可预览)</th>
     <th>上传时间</th>
     <th>操作</th>
   </tr>
   <c:forEach items="${picturelist }" var="pi">
	   <tr>
	    <td class="center">${pi.albumname }</td>
	    <td class="center">${pi.pictureid }</td>
	    <td class="center">${pi.picturedesc }</td>
	    <td class="center" id="showPicture_${pi.pictureid }"><div style="position: relative;"><a href="javascript:showPicture(${pi.pictureid })">${pi.picturename }</a><div id="picture_${pi.pictureid }" style="display:none;position: absolute;z-index: 999;left: 60%;"><img  style="max-height: 300px;max-width: 300px;" src="${pi.picturename }"></div></div></td>
	    <td class="center">${pi.uploadtime }</td>
	    <td class="center">
	     <a href="Picture_selectPictureById.action?pictureid=${pi.pictureid }&jumpPage=${page.curPage }" class="inline-block" title="编辑"><img src="images/icon_edit.gif"/></a>
	     <a href="javascript:delete_picture(${pi.pictureid })" class="inline-block" title="删除"><img src="images/icon_drop.gif"/></a>
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
			<a href="Picture_showPicture.action?jumpPage=1">首页</a>&nbsp;&nbsp;&nbsp;
			<a
			href="Picture_showPicture.action?jumpPage=${page.curPage - 1 }">前一页</a>&nbsp;&nbsp;&nbsp;
			<a
			href="Picture_showPicture.action?jumpPage=${page.curPage + 1}">后一页</a>&nbsp;&nbsp;&nbsp;
			<a
			href="Picture_showPicture.action?jumpPage=${page.maxPage }">尾页</a>&nbsp;&nbsp;&nbsp;
	    </div>
	  </div>
 <br><br><br><br><br>
 </div>

</body>
</html>