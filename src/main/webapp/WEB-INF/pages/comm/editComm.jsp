<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../util/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>商品信息</title>

<script src="resource/js/jquery-3.2.1.js"></script>
<link href="resource/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resource/css/styles.css" rel="stylesheet">
<link href="resource/css/buttons.css" rel="stylesheet">
<script src="resource/bootstrap/js/bootstrap.min.js"></script>
<script src="resource/js/shopCar.js"></script>
</head>

<style type="text/css">
@keyframes poolstrem
{
from {opacity:0;}
to {background:1;}
}
.bs-glyphicons{
	animation:poolstrem 1s;
}
.bs-glyphicons .glyphicon{
	font-size:22px;
	overflow: hidden;
	height: 60%;
}
.spectiveBlur:hover{
  transform: translate(0%, 0%) scale(1.2);
  transition: transform .2s;
}
</style>
<body>

	<div class="row">
		<div class="col-md-12">
		<div class="content-box-header panel-heading">
              <div class="panel-title ">修改商品信息</div>
            </div>
            <form method="post" action="commAction_toeditComm" onsubmit="return pankong()">
            <div  class="panel-body">
	            <div class="form-group">
		            <label>商品编号<span style="color:red;"></span></label>
		            <input class="form-control" disabled="disabled" name="comm.commId" id="comm.commId" type="text" value="${param.id}">
		            <input class="form-control" name="comm.commId" id="comm.commId" type="hidden" value="${param.id}">
	          	</div>
	          	<div class="form-group">
		            <label>商品名称<span style="color:red;"></span></label>
		            <input class="form-control" name="comm.commName" id="comm.commName" type="text" value="${param.name}">
	          	</div>
	          	<div class="form-group">
		            <label>商品价格<span style="color:red;"></span></label>
		            <input class="form-control"name="comm.commPrice" id="comm.commPrice" type="text" value="${param.price}">
	          	</div>
	          	<div class="form-group">
		            <label>商品数量<span style="color:red;"></span></label>
		            <input class="form-control"name="comm.commNumber" id="comm.commNumber" type="text" value="${param.number}">
	          	</div>
	          	<div class="form-group">
		            <label>商品介绍<span style="color:red;"></span></label>
		            <input class="form-control"name="comm.commIntro" id="comm.commIntro" type="text" value="${param.Intro}">
	          	</div>
	          	<div>
	          		<button class="btn btn-info" onclick="return confirm('您确认修改该商品信息吗？')">保存</button>
	          	</div>
          	</div>
          	</form>
		</div>
</body>
</html>