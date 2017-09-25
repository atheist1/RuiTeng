
    //下面用于多图片上传预览功能
    function setImagePreviews(j,obj) {
        //获取选择图片的对象
        var docObj = document.getElementById("upload");
 
        //后期显示图片区域的对象
        var dd ;
        
        //得到所有的图片文件
       
        var fileList = docObj.files;
        //循环遍历
        for (var i = 0; i < fileList.length; i++) { 
        	dd = document.getElementById("preimg"+j);
            //动态添加html元素   
            //"<div style='float:left;border:1px solid black;margin-right:2px;' >
            dd.innerHTML += "<img id='img" + j + "'  /><input type='hidden' name='imgurl' value="+obj.value+">";
            //获取图片imgi的对象
            var imgObjPreview = document.getElementById("img"+j); 
            
            if (docObj.files && docObj.files[i]) {
                //火狐下，直接设img属性
                imgObjPreview.style.display = 'block';
                imgObjPreview.style.width = '135px';
                imgObjPreview.style.height = '95px';
                //imgObjPreview.src = docObj.files[0].getAsDataURL();
                //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要以下方式
                imgObjPreview.src = window.URL.createObjectURL(docObj.files[i]);   //获取上传图片文件的物理路径
            }
            else {
                //IE下，使用滤镜
                docObj.select();
                var imgSrc = document.selection.createRange().text;
                //alert(imgSrc)
                var localImagId = document.getElementById("img" + i);
               //必须设置初始大小
                localImagId.style.width = "197px";
                //localImagId.style.height = "180px";
                //图片异常的捕捉，防止用户修改后缀来伪造图片
                try {
                    localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                    localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
                }
                catch (e) {
                    alert("您上传的图片格式不正确，请重新选择!");
                    return false;
                }
                imgObjPreview.style.display = 'none';
                document.selection.empty();
            }
        }  
        return true;
    }
