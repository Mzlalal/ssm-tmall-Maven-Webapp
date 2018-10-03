<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../util/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="../resource/js/jquery-3.2.1.js"></script>

<link href="../resource/css/bootstrap.min.css" rel="stylesheet">
<link href="../resource/css/styles.css" rel="stylesheet">
<link href="../resource/vendors/form-helpers/css/bootstrap-formhelpers.min.css"
    rel="stylesheet">
<link href="../resource/vendors/select/bootstrap-select.min.css"
    rel="stylesheet">
<link href="../resource/css/forms.css" rel="stylesheet">
<script src="../resource/js/bootstrap.min.js"></script>
<script src="../resource/vendors/form-helpers/js/bootstrap-formhelpers.min.js"></script>
<script src="../resource/vendors/select/bootstrap-select.min.js"></script>
</head>
<body>
    <div class="col-md-6">
        <div class="content-box-large">
            <div class="panel-heading">
                <div class="panel-title">添加用户</div>
                <div class="panel-options">
                    <a href="#"><i class="glyphicon glyphicon-refresh"></i></a>
                </div>
            </div>
            <div class="panel-body">
                <form method="post" action="saveUser">
                	<input type="hidden" name="userType" value="1"/>
                    <fieldset>
                        <div class="form-group">
                            <label>用户名(*)</label> <input class="form-control"
                                placeholder="用户名" name="userName" id="user.name" type="text"
                                value="">
                        </div>
                        <div class="form-group">
                            <label>密码(*)<span style="color:red;">${msg2 }</span></label> <input
                                class="form-control" placeholder="用户密码" name="userPwd"
                                id="user.password" type="password" value="">
                        </div>
                    </fieldset>
                    <div>
                        <button class="btn btn-info" >
                            <i class="glyphicon glyphicon-refresh"></i> 注册
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>