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
<title>广告列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.js"></script>
<script src="js/public.js"></script>
<script src="js/user/ppt.js"></script>
</head>
<body>
    <c:if test="${ ! empty (info) }">
    <script>
    alert('${info}');
    </script>
    </c:if>
	<div class="wrap">
		<div class="page-title">
			<span class="modular fl"><i></i><em>广告列表</em> </span> <span
				class="modular fr"><a href="advertising.jsp"
				class="pt-link-btn">+添加图片</a> </span>
		</div>
		<table class="list-style Interlaced">
			<tr>
				<th>编号</th>
				<th>图片名称</th>
				<th>图片描述</th>
				<th>图片预览</th>
				<th>操作</th>
			</tr>
			<!-- 显示轮播图片 -->
			<c:forEach items="${list}" var="ppt" varStatus="num">
				<tr>
					<td><input type='checkbox' name='number' id='number' value="${ppt.pptId}"/> <span
						class='middle'>${num.index + 1 }</span>
					</td>
					<td class='center'>${ppt.address}</td>
					<td class='center'>${ppt.ppt_desc}</td>
					<td class='center'><img src="${ppt.address}" style="width:70px;heigth:47px"/>
					</td>
					<td class='center'>
					</a> <a href='delete_ppt.action?ppt.pptId=${ppt.pptId}' class="inline-block" title='删除'><img
							src='images/icon_drop.gif' />
					</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		<!-- BatchOperation -->
		<div style="overflow:hidden;">
			<!-- Operation -->
			<div class="BatchOperation fl">
    <label for="del" class="btnStyle middle" onclick="selectAll()">全选</label> <input type="button"
					value="批量删除" class="btnStyle" onclick="batchDelete()"/>
			</div>
		</div>
	</div>
</body>
</html>