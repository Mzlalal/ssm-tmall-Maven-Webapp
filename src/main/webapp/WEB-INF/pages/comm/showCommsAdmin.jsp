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
	height: 40%;
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
              <div class="panel-title ">商品信息</div>
              <div class="panel-options">
              <a href="commAction_addComm">  <button  placeholder="增加商品信息">添加商品信息</button></a>
              </div>
            </div>
			<div class="content-box-large box-with-header">
              <ul class="bs-glyphicons">
              <c:forEach items="${comms }" var="comm">
                <li>
                 <span class="glyphicon spectiveBlur" title="${comm.commIntro }">${comm.commName }</span><br/>
                  <span class="intro">${comm.commIntro }</span><br/><br/>
                  <span class="glyphicon-class">数量:${comm.commNumber }	价格:${comm.commPrice }<br/>
                  <a href="commAction_editComm?id=${comm.commId }&name=${comm.commName}&price=${comm.commPrice}&number=${comm.commNumber}&Intro=${comm.commIntro}">
									<button  placeholder="修改商品信息">修改</button></a>
                  <a href="commAction_deleteComm?id=${comm.commId }">  <button  placeholder="删除商品信息">删除</button></a></span>
                </li>
              </c:forEach>
              </ul>
            </div>
		</div>
	</div>

</body>
</html>