<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>更多</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="resource/js/jquery-3.2.1.js"></script>
<link href="resource/css/bootstrap.min.css" rel="stylesheet">
<link href="resource/css/styles.css" rel="stylesheet">
<script src="resource/js/codeJs.js"></script>
<script src="resource/js/bootstrap.min.js"></script>

<style type="text/css">
.centerBox {
	width: 1200px;
	min-width: 1000px;
	margin: 0 auto;
}

@keyframes poolstrem {
	from {opacity: 0;
}
	to {
		opacity: 1;
	}
}
.col-md-12 {
	animation: poolstrem 1s;
}
</style>
</head>

<body>
	<%@ include file="../util/navigation.jsp"%>
	<div class="centerBox">
		<div class="col-md-12 panel-warning">
			<div class="content-box-header panel-heading">
				<div class="panel-title">${param.name }</div>

				<div class="panel-options">
					<a href="#" data-rel="collapse"><i
						class="glyphicon glyphicon-refresh"></i></a>
				</div>
			</div>
			<div class="content-box-large box-with-header">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>标题</th>
							<th>作者</th>
							<th>发布日期</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${details }" varStatus="status" var="detail">
							<tr>
								<td>${status.index + 1 }</td>
								<td><a target="_blank"
									href="articleDetail?id=${detail.artId }">${detail.artTitle }</a></td>
								<td>${detail.user.userName }</td>
								<td>${detail.artReledate }</td>
							</tr>
						</c:forEach>
					<tbody>
				</table>

			</div>
		</div>
	</div>
</body>
</html>
