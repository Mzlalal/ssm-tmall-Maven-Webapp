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
<link href="resource/css/base.css" rel="stylesheet">
</head>

<body>
	<!-- 消息提示框 -->
	<s:include value="../util/alertBox.jsp"></s:include>
	<!-- 信息页面 -->
	<div class="row">
		<div class="col-md-12">
		<div class="content-box-header panel-heading">
              <div class="panel-title ">商品信息</div>
              <div class="panel-options">
                <a href="commAction_mall"><i class="glyphicon glyphicon-refresh"></i></a>
              </div>
            </div>
			<div class="content-box-large box-with-header">
              <ul class="bs-glyphicons">
              <c:forEach items="${comms }" var="comm">
                <li>
                  <span class="glyphicon spectiveBlur" title="${comm.commIntro }">${comm.commName }</span><br/>
                  <span class="intro">${comm.commIntro }</span><br/><br/>
                  <span class="glyphicon-class">数量:<b id="commNumber">${comm.commNumber }</b>	价格:${comm.commPrice }<br/>
                  <a href="javascript:;" onclick="nowCommNum(${comm.commId},'${comm.commName}')">添加购物车</a></span>
                </li>
              </c:forEach>
              
              </ul>
            </div>
		</div>
	</div>

</body>
</html>