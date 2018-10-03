<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../util/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="resource/js/jquery-3.2.1.js"></script>
<link href="resource/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resource/css/styles.css" rel="stylesheet">
<link
	href="resource/vendors/form-helpers/css/bootstrap-formhelpers.min.css"
	rel="stylesheet">
<link href="resource/vendors/select/bootstrap-select.min.css"
	rel="stylesheet">
<link href="resource/css/forms.css" rel="stylesheet">
<script src="resource/bootstrap/js/bootstrap.min.js"></script>
<script
	src="resource/vendors/form-helpers/js/bootstrap-formhelpers.min.js"></script>
<script src="resource/vendors/select/bootstrap-select.min.js"></script>
</head>
<body>
	<div class="col-md-8">
		<div class="content-box-large">
			<div class="panel-heading">
				<div class="panel-title">查询用户</div>
				<form action="userAction_queryByCond">
					<div class="col-md-3">
						<select class="form-control" name="condName" id="condName">
							<option value="userId" selected>用户ID</option>
							<option value="">……</option>
						</select>
					</div>
					<div class="col-md-4">
						<input class="form-control" placeholder="查询条件" type="text"
							name="condValue">
					</div>
					<div class="col-md-2">
						<button class="btn btn-primary" onclick="submit();">
							<i class="glyphicon glyphicon-zoom-in"></i> 查询
						</button>
					</div>
				</form>
			</div>
			<div class="panel-body">
				<form method="post" action="userAction_update">
					<fieldset>
						<div class="form-group">
							<label>用户ID(*)<span style="color: red;">${msg }</span> </label> <input
								class="form-control" placeholder="用户ID" type="text"
								id="user.userId" name="user.userId"
								value="${requestScope.user.userId}" readonly="readonly">
						</div>
						<div class="form-group">
							<label>用户名</label> <input class="form-control" placeholder="用户名"
								name="user.name" id="user.name" type="text"
								value="${requestScope.user.name}" readonly="readonly">
						</div>
						<div class="form-group">
							<label>密码(*)<span style="color: red;">${msg2 }</span> </label> <input
								class="form-control" placeholder="用户密码" name="user.password"
								id="user.password" type="password"
								value="${requestScope.user.password}" readonly="readonly">
						</div>
						<div class="form-group">
							<label>性别</label> <input class="form-control" placeholder="性别"
								name="user.idcard" id="user.idcard" type="text"
								value="${requestScope.user.sex=='男'?'男':'女' }"
								readonly="readonly">
							<p></p>
						</div>
					</fieldset>

				</form>
			</div>
		</div>
	</div>

</body>
</html>