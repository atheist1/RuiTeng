//添加链接
function linksubmit() {
	// f2.submit();
	//var comm = document.getElementById("allcomment");
	var linkword = document.getElementById("linkword").value;
	var linked = document.getElementById("link").value;
	var text = $("#allcomment").val();
	text = text + "<a color='red' href='" + linked + "'>"
			+ linkword + "</a>";
	$("#allcomment").val(text);
}
// 在文本框中添加图片链接
function textareaImg(i, obj) {
	var text = $("#allcomment").val();
	$("#allcomment").val(text + "<img" + i + ">");
}
// 显示图片数量
var i = 1;
// 获得用户的上传图片路径
function imgurl(obj) {
	tableImg(obj);
    //设置上传图片序号
	$("#pictureid").val(i);
	//通过ajax将该图片存到数据库中
	var formData = new FormData($( "#uploadfile" )[0]);
	$.ajax({ 		
        url: 'uploadImg.action' ,  
        type: 'POST',  
        data: formData,  
        async: false,  
        cache: false,  
        contentType: false,  
        processData: false,  
        success: function (returndata) {  
            //alert(returndata);  
        },  
        error: function (returndata) {  
            alert('浏览版本太低，请更换!');  
        }  
   });  
	//$("#uploadfile").submit();
}
// 在表格中显示图片信息
function tableImg(obj) {
	var tbody = document.getElementById("imgtable");
	var tr = document.createElement("tr");
	tr.setAttribute("id", i);
	tr.innerHTML = '<td>'
			+ i
			+ '</td><td>'
			+ obj.value
			+ '</td>'
			+ '<td>59.3kb</td><td><a href="javascript:deleteImg('
			+ i
			+ ')" index='
			+ i
			+ '><img src="images/deleteImg.jpg" width="25px" height="25px"/></a></td>';
	tbody.appendChild(tr);
	// 传入图片路径,图片下标
	createImg(obj, i);
	i++;
}
// 删除表格图片
function deleteImg(obj) {
	var img = document.getElementById(obj);
	img.innerHTML = "";

	// 删除主页面图片
	var preimg = document.getElementById("mmpimg" + obj);
	$(preimg).remove();

	// 删除文本框里的图片链接
	var text = $("#allcomment").val();
	// 替换内容 img
	text = text.replace('<img' + obj + '>', '');
	$("#allcomment").val(text);
	
	//标记删除的图片
	var text = $("#deletenum").val();
	text = text + obj +'_';
}

// 在界面预览图片
function createImg(obj, i) {
	alert('添加图片'+i);
	var imgs = document.getElementById("book-comm-imgs");
	var div1 = document.createElement("div");
	div1.className = "img-item";
	div1.setAttribute("id", 'mmpimg' + i);
	// 创造左边div
	var divleft = document.createElement("div");
	divleft.className = "divleft";
	var imgname = document.createTextNode('<图片' + i + '>');
	divleft.appendChild(imgname);

	// 创造图片div
	var divimg = document.createElement("div");
	divimg.className = "divimg";
	divimg.setAttribute("id", "preimg" + i)
	var img = document.createElement("img");
	img.setAttribute("id", i);

	divleft.appendChild(divimg);
	// 创造右边div
	var divright = document.createElement("div");
	divright.className = "divright";
	var itext = document.createTextNode("图片描述(30字以内)");
	divright.appendChild(itext);
	// 创建关闭链接
	var a = document.createElement("a");
	a.setAttribute("href", "javascript:close(" + i + ")");
	a.setAttribute("id", "fk");
	a.className = "closeimg";
	var atext = document.createTextNode("X");
	a.appendChild(atext);

	// 创建textarea
	var iarea = document.createElement("textarea");
	iarea.className = "textareaqq";
	iarea.setAttribute("name", "picturedesc");
	iarea.setAttribute("maxlength", "30");
	div1.appendChild(a);
	divright.appendChild(iarea);
	div1.appendChild(divleft);
	div1.appendChild(divright);
	imgs.appendChild(div1);
	// 预览图片
	setImagePreviews(i, obj);
	// 在文本框中添加图片
	textareaImg(i, obj);
}
// 删除预览图片
function close(obj) {
	var img = document.getElementById('mmpimg' + obj);
	$(img).remove();
	// 删除文本框里的图片链接
	var text = $("#allcomment").val();
	// 替换内容 img
	text = text.replace('<img' + obj + '>', '');
	$("#allcomment").val(text);
	
	//标记删除的图片
	var text = $("#deletenum").val();
	text = text + obj +'_';
}