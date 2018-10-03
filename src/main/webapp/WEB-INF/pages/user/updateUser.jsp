<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../util/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="/ssm-tmall/resource/js/jquery-3.2.1.js"></script>
<link href="/ssm-tmall/resource/css/bootstrap.min.css" rel="stylesheet">
<link href="/ssm-tmall/resource/css/styles.css" rel="stylesheet">
<link href="/ssm-tmall/resource/css/forms.css" rel="stylesheet">
<script src="/ssm-tmall/resource/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="col-md-6">
		<div class="content-box-large">
			<div class="panel-heading">
				<div class="panel-title">修改用户</div>
				<div class="panel-options">
					<a href="#" data-rel="collapse"><i
						class="glyphicon glyphicon-refresh"></i></a>
				</div>
			</div>
			<div class="panel-body">
				<form method="post" action="updateUser">
					<input type="hidden" name="userType" value=" ${Uuser.userType }"/>
					<fieldset>
						<div class="form-group">
							<label>用户ID(*)</label> <input class="form-control"
								placeholder="用户ID" type="text" id="user.userId" name="userId" value="${Uuser.userId}"
							    readonly="readonly">
						</div>
						<div class="form-group">
							<label>用户名</label> <input class="form-control" placeholder="用户名"
								name="userName" id="userName" type="text"
								value="${Uuser.userName}">
						</div>
						<div class="form-group">
							<label>密码(*)<span style="color:red;">${msg2 }</span></label> <input class="form-control" 
								placeholder="用户密码" name="userPwd" id="user.userPwd"
								type="password" value="${Uuser.userPwd}">
						</div>
					</fieldset>
					<div>
						<button class="btn btn-info"
							onclick="return confirm('您确认修改用户该用户吗？')">
							<i class="glyphicon glyphicon-refresh"></i> 修改用户
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>