<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>蕊藤农业门户网站后台管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link href="css/bootstrap.min.css" rel="stylesheet">
	 <link href="css/metisMenu.min.css" rel="stylesheet">
	 <!-- Custom CSS -->
	 <link href="css/sb-admin-2.css" rel="stylesheet">
	 <!-- Custom Fonts -->
     <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
  </head>
  <body>
  <!-- 提示信息 -->
   <c:if test="${! empty(info)}">
    <script>
    alert('${requestScope.info}');
    </script>
   </c:if>
     <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default" style="margin-top: 37%">
                    <div class="panel-heading">
                        <h3 class="panel-title"><img src="image/mmexport1501831426456.png" alt="" style="width:100%;height:213px"></h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="loginAction.action" method="post">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="管理员账号" name="username" type="text" autofocus autocomplete="off">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="管理员密码" name="password" type="password" >
                                </div>
                                <!-- 
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                -->
                                <!-- Change this to a button or input when using this as a form -->
                                <input type="submit" class="btn btn-lg btn-success btn-block" value="登录">
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </body>
</html>
