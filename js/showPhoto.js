/*
* @Author: Marte
* @Date:   2017-09-12 12:57:42
* @Last Modified by:   Marte
* @Last Modified time: 2017-09-12 12:58:16
*/


(function(){
    layer.use('extend/layer.ext.js', function(){
    //初始加载即调用，所以需放在ext回调里
    layer.ext = function(){
    layer.photosPage({
        html:'<div style="padding:20px;">'+ unescape("%u7D20%u6750%u5BB6%u56ED%20-%20sc.chinaz.com") +'</p><p id="change"></p></div>',
                    title: '农场风光',
                    id: 100, //相册id，可选
                    parent:'#imgs'
                    });
            };
        });
    })();
