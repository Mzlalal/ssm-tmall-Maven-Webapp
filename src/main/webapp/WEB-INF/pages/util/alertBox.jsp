<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>消息提示框</title>
<style type="text/css">

.alertBox {
	width: 100px;
	margin: 0 25%;
	opacity: 0;
	position: absolute;
	z-index: 100;
}

</style>
</head>
<body>
	<div class="alertBox">
		<button class="btn btn-default btn-lg" id="msg"></button>
	</div>
</body>
</html>
