<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../util/taglib.jsp"%>
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
<script src="/ssm-tmall/resource/js/cate.js" type="text/javascript"></script>
<script src="/ssm-tmall/resource/js/entity.js" type="text/javascript"></script>
</head>
<body>
    <form name="frmAction" id="frmAction" method="post" action="/ssm-tmall/category/batchDelete">
        <!-- 操作类型：1新增 2修改 3删除 -->
        <input name="operateType" type="hidden" id="operateType" value="0" />
        <input name="cateId" type="hidden" id="cateId" value="" />
        <input name="cateName" type="hidden" id="cateName" value="" />

        <div class="row">
            <div class="col-md-12">
                <div class="content-box-large">
                    <div class="panel-heading">
                        <!-- 显示栏目标题 -->
                        <div class="panel-title">类别管理</div>
                        <a class="btn btn-success btn-sm" href="javascript:;" onclick="add()" >新增类别</a>
                        <a class="btn btn-success btn-sm" href="javascript:;" onclick="save()" >保存</a>
                        <a class="btn btn-warning btn-sm" href="javascript:;" onclick="del()" >批量删除</a>
                    </div>
                    <div class="panel-body">
                        <div id="example_wrapper" class="dataTables_wrapper form-inline">
                            <table class="table table-striped table-bordered dataTable"
                                id="example" aria-describedby="example_info">
                                <thead>
                                    <tr>
                                        <th><input type="checkbox" name="selall" onclick="selectAll(this)" /></th>
                                        <th>#</th>
                                        <th>ID</th>
                                        <th>角色名称</th>
                                        <th>操作</th>
                                    </tr>
                                </thead>

                                <tbody id="cateListTable">
                                    <c:forEach var="cate" items="${cates}" varStatus="status">
                                        <tr class="gradeA odd">
                                            <td><input type='checkbox' name='ids' value="${cate.cateId}" /></td>
                                            <td><c:out value="${status.index+1}" /></td>
                                            <td><c:out value="${cate.cateId}" /></td>
                                            <td>
                                            <input name="cate.cateName_${cate.cateId}" type="text" id="cate.cateName_${cate.cateId}"
                                                value="<c:out value="${cate.cateName}" />" disabled="true" /></td>
                                            <td>
                                            <a class="btn btn-primary btn-xs" href="javascript:;" onclick="editSingle(${cate.cateId})">修改 </a> 
                                            <a class="btn btn-primary btn-xs" href="javascript:;" onclick="delSingle(${cate.cateId})">删除</a>
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