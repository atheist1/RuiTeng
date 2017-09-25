
	var xmlhttp;
	//获得用户输入
	function getContent() {
		var content = document.getElementById("inp-query");
		//创建xmlHttp对象
		xmlhttp = createXMLHttp();
		var text  = content.value;
		if(text==''){
			return;
		}
		var url = "searchBook.do?method=searchBook&search="+encodeURI(text);
		//发送数据
		xmlhttp.open("GET", url, true);
		//判读状态码
		xmlhttp.onreadystatechange = callback;
		//
		xmlhttp.send(null);
	}
	

	//创建对象
	function createXMLHttp() {
		var xmlhttp;
		if (window.XMLHttpRequest) {
			xmlhttp = new XMLHttpRequest();
		}
		if (window.ActiveXObject) {
			xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
			if (!xmlhttp) {
				xmlhttp = new ActiveXObject('Msxml2.XMLHTTP');
			}
		}
		return xmlhttp;
	}
	//传输数据
	function callback() {
		if (xmlhttp.readyState == 4) {
			if (xmlhttp.status == 200) {
				//数据交互成功
				var result = xmlhttp.responseText;
				var json = eval('(' + result + ')');
				//显示数据
				showContent(json);
			}
		}
	}
   
	//显示数据
	function showContent(json) {
		//清除之前的数据
		clearContent();
		//设置显示格式
		setLocation();
		//创造节点
		for ( var i = 0; i <= json.size - 1; i++) {
			var tr = document.createElement("tr");
			var td = document.createElement("td");
			//设置事件
			td.onmouseover = function() {
				this.className = 'mouseOver';
				var title = $(this).html();
				console.log(title);
				var t =title.split("</span>");
				var result = t[0];
				result = result.substring(result.lastIndexOf(">")+1);
				document.getElementById("inp-query").value=result;
			};
			td.onmouseleave = function() {
				this.className = 'mouseLeave';
			};
			//当用户点击提示的内容是，自动将内容输入到搜索框中
//			td.onkeydown = function() {
//				alert('1222');
//			};
			td.innerHTML = "<div class='kk'><a href='bookDesc.do?method=bookDesc&book_id="+json.books[i].book_id+"'><img width='40px' height='50px' src='"+json.books[i].book_picture+"'></a>"
					+ "<span id='booktitle"+i+"'style='font-size:15px;color: cadetblue;'>"+json.books[i].book_title+"</span>"
					+ "&nbsp;&nbsp;"
					+ "<span style='font-size:15px;color: cadetblue;'>"+json.books[i].book_date+"</span>"
					+ "&nbsp;&nbsp;"
					+ "<span style='font-size:15px;color: cadetblue;'>"+json.books[i].book_author+"</span></div>";
			tr.appendChild(td);
			document.getElementById("tcontent").appendChild(tr);
		}
	}
	function keywordBlur(){
		clearContent();
	}
	//清除数据
	function clearContent() {
		var root = document.getElementById("tcontent");
		//从下清除
		var length = root.childNodes.length;	
		for ( var i = length-1; i >=0; i--) {
			root.removeChild(root.childNodes[i]);
		}
	}
	//设置格式
	function setLocation() {
		var text = document.getElementById("inp-query");
		var width = text.offsetWidth;
		var height = text.offsetHeight;
		var left = text.Left;
		var top = text.offsetTop;
		//alert("left"+left);
		//alert("top"+top);
		//设置显示div的格式
		var div = document.getElementById("show");
		//div.style.margin-left = 121px;
		div.style.top = height + top + 'px';
		div.style.border = '1';
		//设置表格宽度
		document.getElementById("t1").style.width = width+ 'px';
	}
	$(document).ready(
					function() {
						var marginpx = 0, imgList = $('.list-col').width(), num = $('.imgList-style div').length - 1;
						num = 1;
						
						$("#prev").click(
								function() {
									if (marginpx != 0) {
										marginpx += imgList;
										$(".imgList-style").css("margin-left",
												marginpx + "px");
									} else {
										marginpx = num * imgList * -1;
										$(".imgList-style").css("margin-left",
												marginpx + "px");
									}
								});
						$("#next").click(
								function() {
									if (marginpx != (num * imgList * -1)) {
										marginpx -= imgList;
										$(".imgList-style").css("margin-left",
												marginpx + "px");
									} else {
										marginpx = 0;
										$(".imgList-style").css("margin-left",
												marginpx + "px");
									}
								});
								
					  
					});
	
	$(document).ready(
			function() {
				var marginpx = 0, imgList = $('.list-col').width(), num = $('.imgList-style div').length - 1;
				num = 2;
				marginpx =600;
				$("#prev2").click(
						function() {
							if (marginpx != 0) {
								marginpx += imgList;
								$(".imgList-style2").css("margin-left",
										marginpx + "px");
							} else {
								marginpx = num * imgList * -1;
								$(".imgList-style2").css("margin-left",
										marginpx + "px");
							}
						});
			 $("#next2").click(
						function() {
							if (marginpx != (num * imgList * -1)) {
								marginpx -= imgList;
								$(".imgList-style2").css("margin-left",
										marginpx + "px");
							} else {
								marginpx = 0;
								$(".imgList-style2").css("margin-left",
										marginpx + "px");
							}
						});
				
			});