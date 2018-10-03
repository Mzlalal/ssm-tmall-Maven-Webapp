<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>左侧导航栏</title>

<script src="/ssm-tmall/resource/js/jquery-3.2.1.js"></script>
<link href="/ssm-tmall/resource/css/bootstrap.min.css" rel="stylesheet">
<link href="/ssm-tmall/resource/css/styles.css" rel="stylesheet">
<script src="/ssm-tmall/resource/js/bootstrap.min.js"></script>
<script src="/ssm-tmall/resource/js/custom.js"></script>

</head>

<body>
<div class="col-md-2">
  <div class="sidebar content-box" style="display: block;">
    <ul class="nav">
      <!-- Main menu -->
      <li>
        <a href="/ssm-tmall/userController/showUser" target="main">
          <i class="glyphicon glyphicon-user"></i> <b>用户管理</b>
        </a>
       </li>
       <li>
        <a href="/ssm-tmall/category/loadAll" target="main">
          <i class="glyphicon glyphicon-tags"></i> <b>类别管理</b>
        </a>
        </li>
        <li>
        <a href="/ssm-tmall/queryAllActicle" target="main">
          <i class="glyphicon glyphicon-file"></i> <b>文章管理</b>
        </a>
        </li>
        <li>
        <a href="/ssm-tmall/checkArticles" target="main">
          <i class="glyphicon glyphicon-ok"></i> <b>文章审核</b>
        </a>
        </li>
      <li class="submenu">
        <a href="#">
          <i class="glyphicon glyphicon-user"></i> <b>我的账户</b>
          <span class="caret pull-right"></span>
        </a>
        <ul>
          <li><a href="/ssm-tmall/release/loadRelease" target="_blank">编写公告</a></li>
          <li><a href="/ssm-tmall/myArticle" target="_blank">我的文章</a></li>
          <li><a href="/ssm-tmall/userController/cancellation" onclick="return confirm('您确认退出登陆吗?');"><b>注销</b></a></li>
        </ul>
      </li>
    </ul>
  </div>
</div>
</body>
</html>