<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>新闻列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js"></script>
<script src="js/public.js"></script>
<script src="js/user/user.js"></script>
<script src="js/user/news.js"></script>
</head>
<body>
	<!-- 提示信息 -->
	<c:if test="${ ! empty (info) }">
		<script>
			alert('${requestScope.info}');
		</script>
	</c:if>
	<div class="wrap">
		<div class="page-title">
			<span class="modular fl"><i class="user"></i><em>新闻列表</em> </span> <span
				class="modular fr"><a href="addnews.jsp" class="pt-link-btn">+添加新闻</a>
			</span>
		</div>
		<div class="operate">
			<select class="inline-select" name="usertype">
				<option value="0" >按时间排序</option>
				<option value="1" >按类别排序</option>
			</select> <input type="text" id="username" name="username"
				class="textBox length-long" required placeholder="新闻搜索"
				autocomplete="off" />
			<button class="tdBtn">查询</button>
		</div>
		<table class="list-style Interlaced">
			<tbody id="showuser">
				<tr>
					<th>编号</th>
					<th>新闻标题</th>
					<th>新闻类别</th>
					<th>发布时间</th>
					<th>发布人</th>
					<th>浏览次数</th>
					<th>操作</th>
				</tr>
				<c:forEach var="news" items="${news}" varStatus="num">
				<tr><td><input type='checkbox' name='number' id='number' value='${news.newsid}'/>
                <span class='middle'>${num.index + 1 }</span></td>
    		    <td class='center'>${news.newstitle}</td>    		    
    		    <td class='center'>日常活动</td>
    		    <td class='center'>${news.newstime}</td>
    		    <td class='center'>${news.charge}</td>
    		    <td class='center'>${news.clicknumber}</td>
    		    <td class='center'>
       <a href='look_news.action?newsid=${news.newsid}' class='inline-block' title='预览'><img src='images/icon_edit.gif'/></a>
       <a href='delete_news.action?newsid=${news.newsid}' class="inline-block" title='删除'><img src='images/icon_drop.gif'/></a></td>
       </tr>
				</c:forEach>
			</tbody>
		</table>
		<!-- BatchOperation -->
		<div style="overflow:hidden;">
			<!-- Operation -->
			<div class="BatchOperation fl">
				<label for="del" class="btnStyle middle" onclick="selectAll()">全选</label>
				<input type="button" value="批量删除" class="btnStyle"
					onclick="batchDelete()"/>
			</div>
			<!-- turn page -->
			<c:if test="${ ! empty ( news )}">
			<div class="turnPage center fr">
			<a href="#">总共${page.maxPage}页</a> <a href="#">当前第${page.curPage}页</a> <a href="#">总共${page.maxCount}条</a> <a href="#">每页${page.rowPreCount}条</a> <a href="distribute_show_news.action?currPage=1">首页</a> <a href="distribute_show_news.action?currPage=${page.curPage-1}">前一页</a>
				<a href="distribute_show_news.action?currPage=${page.curPage+1}">后一页</a> <a href="distribute_show_news.action?currPage=${page.maxPage}">尾页</a>
			</div>
			</c:if>
		</div>
	</div>
</body>
</html>
