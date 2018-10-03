<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title> ${details.artTitle }</title>
   
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="resource/js/jquery-3.2.1.js"></script>
<link href="resource/css/bootstrap.min.css" rel="stylesheet">
<link href="resource/css/styles.css" rel="stylesheet">
<style type="text/css">
    .centerBox{
        width:1200px;
        min-width:1000px;
        margin:0 auto;
    }
    @keyframes poolstrem {
    from {opacity: 0;
    }
    to {
        opacity: 1;
    }
}
.centerBox {
    animation: poolstrem 1s;
}
 </style>
</head>
  <body>
        <%@ include file="../util/navigation.jsp"%>
    <div class="centerBox">
       <div class="col-md-12">
           <div class="content-box-header">
               <div class="panel-title">${details.artTitle }</div>
               
               <div class="panel-options">
                   <a href="javascript:;" style="margin-right: 20px">作者:${details.user.userName }</a>
                   <a href="javascript:;">发布日期:${details.artReledate }</a>
               </div>
           </div>
           <div class="content-box-large box-with-header" style="font-size: 14px;">
               ${details.artText }
           </div>
       </div>
    </div>
  </body>
</html>
