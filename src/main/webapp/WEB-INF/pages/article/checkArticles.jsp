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
</head>
<body>
<div class="row">
        <div class="col-md-12">
            <div class="content-box-large">
                <div class="panel-heading">
                    <!-- 显示栏目标题 -->
                    <div class="panel-title">文章管理</div>
                </div>
                <div class="panel-body">
                    <div id="example_wrapper" class="dataTables_wrapper form-inline"
                        role="grid">
                        <table class="table table-striped table-bordered dataTable" id="example"
                            aria-describedby="example_info">
                            <thead>
                                <tr>
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
                            <c:forEach items="${checkArticles }" var="checkArticle" varStatus="status">
                                <tr>
                                    <td>${status.index + 1 }</td>
                                    <td>${checkArticle.artTitle }</td>
                                    <td>${checkArticle.artReledate }</td>
                                    <td>
                                        <a target="_blank" href="articleDetail?id=${checkArticle.artId }">内容详情</a>
                                    </td>
                                    <td>${checkArticle.artImg }</td>
                                    <td>${checkArticle.user.userName }</td>
                                    <td>${checkArticle.catetory.cateName }</td>
                                    <td>
                                     <a href="passArticle?display=2&artId=${checkArticle.artId }"  onclick="return confirm('您确认该文章通过吗?');">通过</a>
                                     <a href="passArticle?display=0&artId=${checkArticle.artId }"  onclick="return confirm('您确认让该文章不通过吗?');">未通过</a>
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
</body>
</html>