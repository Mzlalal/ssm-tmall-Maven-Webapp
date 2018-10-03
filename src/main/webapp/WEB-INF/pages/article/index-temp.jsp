<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../util/taglib.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>首页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="/ssm-tmall/resource/js/jquery-3.2.1.js"></script>
<link href="/ssm-tmall/resource/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/ssm-tmall/resource/css/styles.css" rel="stylesheet">
<script src="/ssm-tmall/resource/js/codeJs.js"></script>
<script src="/ssm-tmall/resource/bootstrap/js/bootstrap.min.js"></script>
<script src="/ssm-tmall/resource/js/custom.js"></script>
<script src="/ssm-tmall/resource/js/article.js"></script>
<style type="text/css">
td {
	font-size: 14px;
	overflow: hidden;
}

.moudle {
	height: 300px;
}

@keyframes poolstrem {
	from {opacity: 0;
}

to {
	opacity: 1;
}

}
.content-box-large {
	animation: poolstrem 1.5s;
}

.row {
	margin-right: 0px;
	margin-left: 0px;
}


</style>
</head>

<body>
	<%@ include file="../util/navigation.jsp"%>
	
    <div wi>
	<div class="col-md-4">
		<div class="content-box-large moudle">
			<div class="panel-heading">
				<div class="panel-title">娱乐</div>
				<div class="panel-options">
					<a href="articleMore?type=1&name=娱乐"><b>更多 →</b></a>
				</div>
			</div>
			<div class="panel-body">
				<table class="table table-striped">
					<tbody>
						<c:forEach items="${moudle1 }" varStatus="status" var="moudle1">
							<tr>
								<td>${status.index + 1 }</td>
								<td><a target="_blank"
									href="articleDetail?id=${moudle1.artId }">${moudle1.artTitle }</a></td>
							</tr>
						</c:forEach>
					<tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="content-box-large moudle">
			<div class="panel-heading">
				<div class="panel-title">推荐</div>
				<div class="panel-options">
					<a href="articleMore?type=2&name=娱乐"><b>更多 →</b></a>
				</div>
			</div>
			<div class="panel-body">
				<table class="table table-striped">
					<tbody>
						<c:forEach items="${moudle2 }" varStatus="status" var="moudle2">
							<tr>
								<td>${status.index + 1 }</td>
								<td><a target="_blank"
									href="articleDetail?id=${moudle2.artId }">${moudle2.artTitle }</a></td>
							</tr>
						</c:forEach>
					<tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="content-box-large moudle">
			<div class="panel-heading">
				<div class="panel-title">军事</div>
				<div class="panel-options">
					<a href="articleMore?type=3&name=娱乐"><b>更多 →</b></a>
				</div>
			</div>
			<div class="panel-body">
				<table class="table table-striped">
					<tbody>
						<c:forEach items="${moudle3 }" varStatus="status" var="moudle3">
							<tr>
								<td>${status.index + 1 }</td>
								<td><a target="_blank"
									href="articleDetail?id=${moudle3.artId }">${moudle3.artTitle }</a></td>
							</tr>
						</c:forEach>
					<tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="content-box-large">
				<div class="panel-heading">
					<div class="panel-title">全部内容</div>
				</div>
				<div class="panel-body">
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
							<c:forEach items="${moudle4.pageData }" varStatus="status"
								var="moudle4">
								<tr>
									<td>${status.index + 1 }</td>
									<td><a target="_blank"
										href="articleDetail?id=${moudle4.artId }">${moudle4.artTitle }</a></td>
									<td>${moudle4.user.userName }</td>
									<td>${moudle4.artReledate }</td>
								</tr>
							</c:forEach>
						<tbody>
					</table>
					<!-- 分页 -->
					<ul class="pagination" style="float:right">
						<c:choose>
							<c:when test="${moudle4.currentPage == 1 }">
								<li class="prev disabled"><a href="javascript:;">← 上一页</a></li>
							</c:when>
							<c:when test="${moudle4.currentPage != 1 }">
								<li class="prev"><a
									href="index?curPage=${moudle4.currentPage-1 }">← 上一页</a></li>
							</c:when>
						</c:choose>
						
						<c:choose>
							<c:when test="${moudle4.currentPage == moudle4.totalPage }">
								<li class="next disabled"><a href="javascript:;">下一页 →</a></li>
							</c:when>
							<c:when test="${moudle4.currentPage != moudle4.totalPage }">
								<li class="next"><a
									href="index?curPage=${moudle4.currentPage+1 }">下一页 → </a></li>
							</c:when>
						</c:choose>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>
