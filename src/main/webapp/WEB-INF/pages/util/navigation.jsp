<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../util/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导航栏目</title>
<script src="../resource/js/jquery-3.2.1.js"></script>
<link href="../resource/css/bootstrap.min.css" rel="stylesheet">
<link href="../resource/css/styles.css" rel="stylesheet">
<script src="../resource/js/codeJs.js"></script>
<script src="../resource/js/bootstrap.min.js"></script>

<style type="text/css">
    .header .navbar .nav > li > a{
        float: left;
    }
</style>
</head>
<script type="text/javascript">
 window.onload = function() {
  var show = document.getElementById("show");
  setInterval(function() {
   var time = new Date();
   // 程序计时的月从0开始取值后+1
   var m = time.getMonth() + 1;
   var t = time.getFullYear() + "-" + m + "-"
     + time.getDate() + " " + time.getHours() + "时"
     + time.getMinutes() + "分" + time.getSeconds();
   show.innerHTML = t;
  }, 1000);
 };
 
 </script>
 
<body>

<div class="header">
         <div class="container">
            <div class="row">
               <div class="col-md-5">
                  <!-- Logo -->
                  <div class="logo">
                     <h1><a href="/ssm-tmall/index" href="javascript:;">新闻</a><span id="show"></span></h1>
                  </div>
               </div>
               <div class="col-md-5"></div>
               <div class="col-md-2">
                  <div class="navbar navbar-inverse" role="banner">
                      <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
                        <ul class="nav navbar-nav">
                          <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            ${user.userName==null?'<a href="/ssm-tmall/userController/goToLogin" >登录</a>':user.userName}
                            ${user.userName==null?'':'<b class="caret"></b>'}
                           </a>
                            <ul class="dropdown-menu animated fadeInUp">
                              <li><a href="/ssm-tmall/release/loadRelease" target="_blank">我要投稿</a></li>
                              <li><a href="/ssm-tmall/myArticle" target="_blank">我的文章</a></li>
                              <li><a href="/ssm-tmall/userController/cancellation">注销</a></li>
                            </ul>
                          </li>
                        </ul>
                      </nav>
                  </div>
               </div>
            </div>
         </div>
    </div>
    
</body>
</html>