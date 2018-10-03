<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../util/taglib.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>投稿</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" charset="utf-8" src="utf8-jsp/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="utf8-jsp/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="utf8-jsp/lang/zh-cn/zh-cn.js"></script>
<link href="resource/css/forms.css" rel="stylesheet">
<script src="/ssm-tmall/resource/js/jquery-3.2.1.js"></script>
<link href="/ssm-tmall/resource/css/bootstrap.min.css" rel="stylesheet">
<link href="/ssm-tmall/resource/css/styles.css" rel="stylesheet">
<script src="/ssm-tmall/resource/js/codeJs.js"></script>
<script src="/ssm-tmall/resource/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    	$(function(){
    		$("#fabu").on('click',function(){
    			var type = $("#leibie").val();
    			var artTitle = $("#artTitle").val();
    			var mydate = new Date();
				var str = "" + mydate.getFullYear() + "年";
				str += (mydate.getMonth()+1) + "月";
				str += mydate.getDate() + "日 ";
			    str += (mydate.getHours()+1) + "时";
			    str += (mydate.getMinutes()) + "分";
			    str += (mydate.getSeconds()) + "秒";
    			var artText = getContent();
    			var artImg = "";
    			var userId = $("#userId").val();
    			console.log(artText);
				$.ajax({
					url : "/ssm-tmall/saveArticle",
					type:"post",
					data : {
						"artTitle" : artTitle,
						"artReledate" : str,
						"artText" : artText,
						"artImg" : artImg,
						"catetory.cateId" :type,
						"user.userId" : userId
					},
					success : function() {
						alert("保存成功！");
						
						if(userId == 2){
							top.location.href='/ssm-tmall/userController/goToMain';
						} else {
							window.location.href='/ssm-tmall/index';
						}
						
					},
				});

			});
		});
	</script>
  </head>
  
  <body>
  <%@ include file="../util/navigation2.jsp"%>
    <div>
    <div class="col-md-9" style="margin:0px 12.5%;">
        <div class="content-box-large">
            <div class="panel-heading">
                <div class="panel-title">发布文章</div>
                <div class="panel-options">
                    <a href="#"><i class="glyphicon glyphicon-refresh"></i></a>
                </div>
            </div>
            <div class="panel-body">
            	<!-- enctype="multipart/form-data" -->
                    <fieldset>
                    	<input type="hidden" id="userId" name="user.userId" value="${user.userId }"/>
                        <div class="form-group">
                            <label>标题(*)</label> <input class="form-control"
                                placeholder="请输入文章标题" name="artTitle" id="artTitle" type="text">
                        </div>
                        <div class="form-group">
                            <label>类别(*)</label> 
							<select class="form-control"  id="leibie"/>
								<c:forEach	var="cate" items="${cates }">
									<option value="${cate.cateId }" name="bianhao">
										${cate.cateName }
									</option>
								</c:forEach>
							</select>
                        </div>
                        <div class="form-group">
                        	<script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
                        </div>
                        <div class="form-group">
                        	<label>图片</label>
                        	<!-- <input type="file" name="artImg" id="artImg"/> -->
                        </div>
                    </fieldset>
                    <div>
                        <button class="btn btn-info" id="fabu" >
                            <i class="glyphicon glyphicon-refresh"></i> 发布
                        </button>
                    </div>
            </div>
        </div>
    </div>
   <!--<script id="editor" type="text/plain" style="width:1024px;height:500px;"></script> -->
</div>

<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');


    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }
    function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
    }
    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }
    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }
    function getContent() {
        var arr = [];
        arr.push(UE.getEditor('editor').getContent());
       return arr.join("\n");
    }
    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        return arr.join("\n");
    }
    function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
    }
    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }
    function setFocus() {
        UE.getEditor('editor').focus();
    }
    function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
    }
    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }

    function getLocalData () {
        alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
    }

    function clearLocalData () {
        UE.getEditor('editor').execCommand( "clearlocaldata" );
        alert("已清空草稿箱")
    }
</script>
</body>
</html>
