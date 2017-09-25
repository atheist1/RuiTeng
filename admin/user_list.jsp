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
<title>管理员列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js"></script>
<script src="js/public.js"></script>
<script src="js/user/user.js"></script>
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
			<span class="modular fl"><i class="user"></i><em>管理员列表</em> </span> <span
				class="modular fr"><a href="add_user.jsp" class="pt-link-btn">+添加新管理员</a>
			</span>
		</div>
		<div class="operate">
			<select class="inline-select" name="usertype">
				<option value="0" onclick="findUserByType(value)">普通管理员</option>
				<option value="1" onclick="findUserByType(value)">高级管理员</option>
			</select> <input type="text" id="username" name="username"
				class="textBox length-long" required placeholder="输入管理员账号..."
				autocomplete="off" />
			<button class="tdBtn" onclick="findUser()">查询</button>
		</div>
		<table class="list-style Interlaced">
			<tbody id="showuser">
				<tr>
					<th>编号</th>
					<th>管理员账号</th>
					<th>管理员类别</th>
					<th>注册时间</th>
					<th>最后一次登录时间</th>
					<th>操作</th>
				</tr>
				<c:forEach var="user" items="${users}" varStatus="num">
				<tr><td><input type='checkbox' name='number' id='number' value='${user.username}'/>
                <span class='middle'>${num.index + 1 }</span></td>
    		    <td class='center'>${user.username}</td>
    		    <c:choose>
    		    <c:when test="${user.usertype == 1}">    		    
    		    <td class='center'>高级管理员</td>
    		    </c:when>
    		    <c:when test="${user.usertype == 0}">
    		    <td class='center'>普通管理员</td>
    		    </c:when>
    		    </c:choose>
    		    <td class='center'>${user.registertime}</td>
    		    <td class='center'>${user.lastLogin}</td>
    		    <td class='center'>
       <a href='show_user.action?username=${user.username}' class='inline-block' title='编辑'><img src='images/icon_edit.gif'/></a>
       <a href='delete_user.action?username=${user.username}' class="inline-block" title='删除'><img src='images/icon_drop.gif'/></a></td>
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
			<c:if test="${ ! empty ( users )}">
			<div class="turnPage center fr">
			<a href="#">总共${page.maxPage}页</a> <a href="#">当前第${page.curPage}页</a> <a href="#">总共${page.maxCount}条</a> <a href="#">每页${page.rowPreCount}条</a> <a href="findUserByType.action?usertype=${sessionScope.usertype}&currPage=1">首页</a> <a href="findUserByType.action?usertype=${sessionScope.usertype}&currPage=${page.curPage-1}">前一页</a>
				<a href="findUserByType.action?usertype=${sessionScope.usertype}&currPage=${page.curPage+1}">后一页</a> <a href="findUserByType.action?usertype=${sessionScope.usertype}&currPage=${page.maxPage}">尾页</a>
			</div>
			</c:if>
		</div>
	</div>
</body>
</html>
