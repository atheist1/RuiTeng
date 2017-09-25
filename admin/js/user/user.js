//验证
function validate(){
    if(validateDb()=="true"){
    	return true;
    }else{
    	return false;
    }
}
// 验证旧密码是否输入正确
function validateOld() {
	var pwd = $("#pwd").val();
	var username = $("#username").val();
	// 验证密码是否正确
	$.get('validatepwd.action', "pwd=" + pwd + "&username=" + username,
			function(result) {
				if (result == '1') {
					// 密码正确
					$("#old").html("<img src='images/yes.gif'>");
				} else {
					// 密码错误
					$("#old").html("<img src='images/no.png'>");
				}
			});
}
// 验证新密码和确认密码是否相同
function validateDb() {
	var pwd = $("#newpwd").val();
	var confpwd = $("#confpwd").val();
	if (pwd == confpwd) {
		$("#conf").html("<img src='images/yes.gif'>");
		return 'true';
	}else{
		$("#conf").html("<img src='images/no.png'>");
		return 'false';
	}
}

//根据username查找用户
function findUser(){
    var username = $("#username").val();
    if(username!=""){
    	$.get("finduser.action","username="+username,function(result){
    		if(result==""){
    			alert('不存在该管理员!');
    		}else{
    			var json = eval('('+result+')');
    			$("#showuser").html("");
    			var text ="<tr><th>编号</th><th>管理员账号</th><th>管理员类别</th>"+
   		        "<th>注册时间</th><th>最后一次登录时间</th><th>操作</th></tr>";
    		    var usertype;
    		    if(json[0].usertype=="1"){
    		    	usertype="高级管理员";
    		    }else{
    		    	usertype="普通管理员";
    		    } 
   		    text = text +"<tr><td><input type='checkbox' name='number' id='number' value='"+json[0].username+"'/>"+
                "<span class='middle'>1</span></td>"+
    		    "<td class='center'>"+json[0].username+"</td><td class='center'>"
    		    +usertype+"</td><td class='center'>"+json[0].registertime+"</td>"+
    		    "<td class='center'>"+json[0].lastLogin+"</td>"+
    		    "<td class='center'>"+
    		    "<a href='show_user.action?username="+json[0].username+"' class='inline-block' title='编辑'><img src='images/icon_edit.gif'/></a>"+
               "<a href='delete_user.action?username="+json[0].username+"'  class='inline-block' title='删除'><img src='images/icon_drop.gif'/>" +
               "</a></td></tr>";
    		    $("#showuser").html(text);
    		}	
    	});  	
    }
}

//根据管理员类别显示用户
function findUserByType(value){
	location ="findUserByType.action?usertype="+value+"&currPage=1";
//	$.get("findUserByType.action","usertype="+value,function(result){
//		if(result==""){
//			alert('不存在该类型的管理员!');
//		}else{
//			var json = eval('('+result+')');
//			$("#showuser").html("");
//		    var text ="<tr><th>编号</th><th>管理员账号</th><th>管理员类别</th>"+
//		     "<th>注册时间</th><th>最后一次登录时间</th><th>操作</th></tr>";
//		   //alert(json.length);
//		   for(var i=0;i<json.length;i++){
//		    var usertype;
//		    if(json[i].usertype=="1"){
//		    	usertype="高级管理员";
//		    }else{
//		    	usertype="普通管理员";
//		    } 
//		    text = text +"<tr><td><input type='checkbox' name='number' id='number' value='"+json[i].username+"'/>"+
//            "<span class='middle'>"+(i+1)+"</span></td>"+
//		    "<td class='center'>"+json[i].username+"</td><td class='center'>"
//		    +usertype+"</td><td class='center'>"+json[i].registertime+"</td>"+
//		    "<td class='center'>"+json[i].lastLogin+"</td><td class='center'>"+
//		    "<a href='show_user.action?username="+json[i].username+"' class='inline-block' title='编辑'><img src='images/icon_edit.gif'/></a>"+
//		    "<a href='delete_user.action?username="+json[i].username+"' class='inline-block' title='删除'><img src='images/icon_drop.gif'/></a></td></tr>";
//		   }
//		  //alert(text);
//		  $("#showuser").html(text);
//		}	
//	});	
}

//全选
function selectAll(){
	$("[id='number']").attr("checked","checked");
}
//批量删除
function batchDelete(){
	var text = "";
	//获得选择的用户账号
	var c = $("[id='number']");
	for(var i=0;i<c.length;i++){
		if(c[i].checked){
		text =text+c[i].value+"_";
		}
	}
	//删除
	location="batchdelete_user.action?username="+text;
}


