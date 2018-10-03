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
              <div class="panel-title ">添加商品信息</div>
            </div>
            <form method="post" action="commAction_toaddComm" onsubmit="return pankong()">
            <div  class="panel-body">
	            <div class="form-group">
		            <label>商品编号<span style="color:red;"></span></label>
		            <input class="form-control" disabled="disabled" placeholder="自动生成" name="comm.commId" id="commId" type="text" value="${param.commId}">
	          	</div>
	          	<div class="form-group">
		            <label>商品名称<span style="color:red;"></span></label>
		            <input class="form-control" placeholder="商品名称" name="comm.commName" id="" type="text" value="${param.commName}">
	          	</div>
	          	<div class="form-group">
		            <label>商品价格<span style="color:red;"></span></label>
		            <input class="form-control" placeholder="单价" name="comm.commPrice" id="" type="text" value="${param.commPrice}">
	          	</div>
	          	<div class="form-group">
		            <label>商品数量<span style="color:red;"></span></label>
		            <input class="form-control" placeholder="数量" name="comm.commNumber" id="" type="text" value="${param.commNumber}">
	          	</div>
	          	<div class="form-group">
		            <label>商品介绍<span style="color:red;"></span></label>
		            <input class="form-control" placeholder="介绍" name="comm.commIntro" id="" type="text" value="${param.commIntro}">
	          	</div>
	          	<div>
	          		<button class="btn btn-info" onclick="return confirm('您确认添加该商品吗？')">添加商品信息</button>
	          	</div>
          	</div>
          	</form>
		</div>
</body>
</html>