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
	if(text != ""){
	//删除
	location="batch_delete_news.action?newsid="+text;
	}
}