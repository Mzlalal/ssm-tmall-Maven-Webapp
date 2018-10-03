<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../util/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户管理</title>
<script src="resource/js/jquery-3.2.1.js"></script>
<link href="resource/css/bootstrap.min.css" rel="stylesheet">
<link href="resource/css/styles.css" rel="stylesheet">
<link rel="resource/stylesheet" href="css/stats.css">
<script src="resource/vendors/datatables/js/jquery.dataTables.min.js"></script>
<script src="resource/vendors/datatables/dataTables.bootstrap.js"></script>
<script src="resource/js/bootstrap.min.js"></script>
<script src="resource/js/custom.js"></script>
<script src="resource/js/tables.js"></script>
</head>
<body>
<form name="frmAction" action="batchDelete" method="post">
	<div class="row">
		<div class="col-md-12">
			<div class="content-box-large">
				<div class="panel-heading">
					<!-- 显示栏目标题 -->
					<div class="panel-title">文章管理</div>
					<input type="submit" class="btn btn-warning btn-sm" href="javascript:;" value="批量删除" >
				</div>
				<div class="panel-body">
					<div id="example_wrapper" class="dataTables_wrapper form-inline"
						role="grid">
						<table class="table table-striped table-bordered dataTable" id="example"
							aria-describedby="example_info">
							<thead>
								<tr>
								    <th><input type="checkbox" name="selall" onclick="selectAll(this)" /></th> 
									<th>#</th>
									<th>文章标题</th>
									<th>发布时间</th>
									<th>发布内容</th>
									<th>图片</th>
									<th>发布用户</th>
									<th>发布类别</th>
									<th>操作</th>
								</tr>
							</thead>

							<tbody role="alert" aria-live="polite" aria-relevant="all">
							<c:forEach items="${moudle4 }" var="moudle" varStatus="status">
								<tr>
								    <td><input type='checkbox' name='ids' value="${moudle.artId }" /></td>
								    <td>${status.index + 1 }</td>
								    <td>${moudle.artTitle }</td>
								    <td>${moudle.artReledate }</td>
								    <td>
								    	<a target="_blank" href="articleDetail?id=${moudle.artId }">内容详情</a>
							    	</td>
								    <td>${moudle.artImg }</td>
								    <td>${moudle.user.userName }</td>
								    <td>${moudle.catetory.cateName }</td>
									<td>
									 <a href="deleteArticle?artId=${moudle.artId }"  
									 	onclick="return confirm('您确认删除该用户吗?删除操作不可撤销');">	删除</a>
									</td>
								</tr>
							</c:forEach>	
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
</body>
</html>