<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../util/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户管理</title>
<script src="/ssm-tmall/resource/js/jquery-3.2.1.js"></script>
<link href="/ssm-tmall/resource/css/bootstrap.min.css" rel="stylesheet">
<link href="/ssm-tmall/resource/css/styles.css" rel="stylesheet">
<link rel="/ssm-tmall/resource/stylesheet" href="css/stats.css">
<script src="/ssm-tmall/resource/js/bootstrap.min.js"></script>
<script src="/ssm-tmall/resource/js/custom.js"></script>
<script src="/ssm-tmall/resource/js/tables.js"></script>
<script src="/ssm-tmall/resource/js/entity.js"></script>

</head>
<body>
<form name="frmAction" action="batchDelete" method="post">
	<div class="row">
		<div class="col-md-12">
			<div class="content-box-large">
				<div class="panel-heading">
					<!-- 显示栏目标题 -->
					<div class="panel-title">用户管理</div>
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
									<th>用户ID</th>
									<th>用户名</th>
									<th>密码</th>
									<th>类别</th>
									<th>操作</th>
								</tr>
							</thead>

							<tbody role="alert" aria-live="polite" aria-relevant="all">
							<c:forEach items="${users }" var="user" varStatus="status">
								<tr>
								    <td><input type='checkbox' name='ids' value="${user.userId }" /></td>
								    <td>${status.index + 1 }</td>
									<td id="${user.userId }" >${user.userId  }</td>
									<td>${user.userName }</td>
									<td>${user.userPwd }</td>
									<td>
										<c:if test="${user.userType==2}">管理员用户</c:if>
										<c:if test="${user.userType==1}">普通用户</c:if>
									</td>
									<td>
									<a href="editUser?userId=${user.userId }" >修改</a> 
									 <a href="deleteUser?userId=${user.userId }"  
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