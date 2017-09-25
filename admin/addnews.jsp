<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script src="js/jquery3.2.1.js"></script>
<link rel="stylesheet" href="style/bookhome.css" />
<link rel="stylesheet" href="style/bookcomm.css" />
<link rel='stylesheet' href='style/bootstrap5152.css' />
<link rel='stylesheet' href='style/addnews.css' />
<link href="style/adminStyle.css" rel="stylesheet" type="text/css" />
<script type='text/javascript' src='js/bootstrap.min.js'></script>
<script src="js/user/addphoto.js"></script>
<script src="js/user/wkxnote.js"></script>
<script src="js/user/scroll.js"></script>
<script>
	//声明好albumid
	$("document").ready(function() {
		$.get("getAlbumid.action", function(result) {
			//alert(result);
			$("[id='albumid']").val(result);
		});
	});
</script>
<title>添加新闻</title>
</head>
<body style="overflow:-Scroll;overflow-x:hidden">
	<div class="page-title" style="margin-left: 7px;">
		<span class="modular fl"><i></i><em>发布新闻</em> </span> <span
			class="modular fr"></span>
	</div>
	<div class="bookbody">
		<!--
            	作者：3230993409@qq.com
            	时间：2017-08-06
            	描述：左边内容
            -->
		<div class="book-comm-left" style="margin-left:23%">
			<form action="add_news.action" name="f1" method="post">
				<!--  隐藏表单域传入  用户id 和book id -->
				<input type="hidden" name="charge" value="${sessionScope.user.userid}" /> 
				<input type="hidden" id="albumid" name="albumid" value="" />
			    <input type="hidden" name="deletenum" id="deletenum" value="">
				<div class="comm-front">
					<span style="font-size: 16px;">新闻标题</span><br> <input
						type="text" name="newstitle" maxlength="40"
						style="height:30px;width: 585px;" autocomplete="off"
						placeholder="最多40字" />
					<table width="590px">
						<tr>
							<td><span style="font-size:16px;">新闻正文</span>
							</td>
							<td>
								<ul class="control-panel">
									<li class="image-btn"><a class="lnk-flat"
										href="#img-modal" data-toggle="modal" title="插入图片"><button>图片</button>
									</a></li>
									<li class="link-btn"><a class="lnk-flat"
										href="#link-modal" data-toggle="modal" title="插入链接"><button>链接</button>
									</a></li>

								</ul></td>
						</tr>
					</table>
				</div>
				<div class="content">
					<textarea name="newstext" cols="62" rows="20" id="allcomment" /></textarea>
				</div>

				<!--
                	作者：3230993409@qq.com
                	时间：2017-08-07
                	描述：显示插入的图片信息
                -->
				<div class="book-comm-imgs" id="book-comm-imgs"></div>
				<br /> <br />
				<hr style="height:1px;border:none;border-top:1px dashed #0066CC;" />

				<input type="submit" class="tdBtn" value="发布新闻"
					style="margin-left: 42%;" />
			</form>
			<!--    结尾     -->
			<br />
			<hr style="height:1px;border:none;border-top:1px dashed #0066CC;" />
			<div id="footer" style="clear: both;">
				<span id="icp" class="fleft gray-link"> &copy; ruiteng.com,
					all rights reserved 湖南蕊藤农业科技有限公司 
			</div>
		</div>



		<!--
                	作者：3230993409@qq.com
                	时间：2017-08-07
                	描述：插入图片
             -->
		<div id="img-modal" class="modal hide fade" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
			style="width:600px">
			<div class="modal-dialog modal-sm">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h3 id="myModalLabel">添加照片</h3>
				</div>
				<form action="uploadImg.action" method="post" id="uploadfile" enctype="multipart/form-data" target="_blank">
				    <input type="hidden" name="charge"
					value="${sessionScope.user.userid}" /> 
					<input type="hidden" id="albumid" name="albumid" value="" />
					<!-- 上传图片序号 -->
					<input type="hidden" id="pictureid" name="pictureid" value="" />
					<div class="chooseimage">
						<input id="upload" type="file" name="upload" onchange="imgurl(this)"/>
					</div>
				</form>
				<span>图片不超过4M</span>
				<div class="img-list">
					<!-- /.col-lg-6 -->
					<div class="col-lg-6">
						<div class="panel panel-default">

							<!-- /.panel-heading -->
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>#</th>
												<th>图片</th>
												<th>大小</th>
												<th>删除？</th>
											</tr>
										</thead>
										<tbody id="imgtable">


										</tbody>
									</table>
								</div>
								<!-- /.table-responsive -->
							</div>
							<!-- /.panel-body -->
						</div>
						<!-- /.panel -->
					</div>
					<!-- /.col-lg-6 -->
				</div>
				<div>
					<div class="modal-footer">
						<!--
                
                        	<button class="btn" data-dismiss="modal"  onclick="imgsubmit()">保存</button>
                        -->
						<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
					</div>
				</div>
			</div>
		</div>


		<!--
            	作者：3230993409@qq.com
            	时间：2017-08-07
            	描述：添加链接
           -->
		<div id="link-modal" class="modal hide fade" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
			style="width:416px">
			<div class="modal-dialog modal-sm">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 id="myModalLabel" style="color:#555555;">添加链接</h4>
				</div>
				<!--        	
                    <form method="post" action="test.jsp" name="f2">
                    	-->
				<div class="img-list">
					<span style="font-size: 16px;">链接文字</span><br />
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="linkword"
						id="linkword" style="height:30px;width: 380px;" /><br /> <br />
					<span style="font-size: 16px;">链接网址</span><br />
					&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="link" id="link"
						style="height:30px;width: 380px;" /><br /> <br />
				</div>
				<div>
					<div class="modal-footer">
						<button class="btn" data-dismiss="modal" onclick="linksubmit()">确定</button>
						<button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>

</html>