//ȫѡ
function selectAll(){
	$("[id='number']").attr("checked","checked");
}
//����ɾ��
function batchDelete(){
	var text = "";
	//���ѡ����û��˺�
	var c = $("[id='number']");
	for(var i=0;i<c.length;i++){
		if(c[i].checked){
		text =text+c[i].value+"_";
		}
	}
	if(text != ""){
	//ɾ��
	location="batchdelete_ppt.action?multiId="+text;
	}
}