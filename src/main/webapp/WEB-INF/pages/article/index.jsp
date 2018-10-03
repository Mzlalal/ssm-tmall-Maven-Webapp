<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../util/taglib.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="utf-8">
    <title>主页</title>
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Mobile Specific Metas
  ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
  ================================================== -->
    <link rel="stylesheet" href="/ssm-tmall/resource/index/css/zerogrid.css">
    <link rel="stylesheet" href="/ssm-tmall/resource/index/css/style.css">
    <link rel="stylesheet" href="/ssm-tmall/resource/index/css/responsiveslides.css" />
    <link rel="stylesheet" href="/ssm-tmall/resource/index/css/responsive.css">
    
    <!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100//ssm-tmall/resource/index/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
        <script src="js/html5.js"></script>
        <script src="js/css3-mediaqueries.js"></script>
    <![endif]-->
    <link href='/ssm-tmall/resource/index/images/favicon.ico' rel='icon' type='image/x-icon'/>
    
    <script src="/ssm-tmall/resource/index/js/jquery.min.js"></script>
    <script src="/ssm-tmall/resource/index/js/responsiveslides.js"></script>
    
	<link href="/ssm-tmall/resource/css/bootstrap.min.css" rel="stylesheet">
	<link href="/ssm-tmall/resource/css/styles.css" rel="stylesheet">
	<script src="/ssm-tmall/resource/js/bootstrap.min.js"></script>
    <script>
    $(function () {
      $("#slider").responsiveSlides({
        auto: true,
        pager: true,
        nav: true,
        speed: 500,
        maxwidth: 960,
        namespace: "centered-btns"
      });
    });
  </script>
    
</head>
<body>
<!--------------Header--------------->
 
    <%@ include file="../util/navigation.jsp"%>


<!--------------Navigation--------------->

<div class="nav1">
    <ul>
        <li><a href="/ssm-tmall/index">主页</a></li>
        <c:forEach items="${types }" var="type" varStatus="status">
            <li><a target="_blank" href="/ssm-tmall/articleMore?type=${type.cateId }">${type.cateName }</a></li>
        </c:forEach>
    </ul>
</div>

            
<!--------------Content--------------->
<section id="content">
    <div class="zerogrid">
        <div class="row block">
            
            <div class="featured col16">
                <div class="rslides_container">
                    <ul class="rslides" id="slider" >
                        <c:forEach items="${moudle2 }" varStatus="status" var="moudle2">
                        
                           <li>
                               <a target="_blank" title="${moudle2.artTitle }" href="articleDetail?id=${moudle2.artId }">
                                   <img src="/ssm-tmall/resource/index/images/${status.index + 1 }.jpg"/>  
                                   <span style="display:block; font-size: 16px;margin: 0 auto; width: 570px;text-align: center;">${moudle2.artTitle }</span>
                               </a>
                           </li>
                             
                        </c:forEach>

                    </ul>
                </div>
            </div>
            <div class="sidebar col05">
                <section>
                    <div class="heading">关于我们</div>
                    <div class="content">
                        &copy;新程教育 &nbsp;&nbsp;<a href="http://www.j2cms.com" target="_blank">www.j2cms.com</a><br/>
                                                电话:&nbsp;&nbsp;8888-6666<br/>
                                                地址：&nbsp;辰泰科技园新教教育
                    </div>
                </section>
                <section>
                    <div class="heading">军事<span style="float: right;font-size:16px;"><a style="color:#FFF;" target="_blank" href="/ssm-tmall/articleMore?type=1">更多 >></a></span></div>
                    <div class="content">
                        <ul class="list">
                            <c:forEach items="${moudle3 }" varStatus="status" var="moudle3">
                              <li><a  target="main" href="articleDetail?id=${moudle3.artId }">${moudle3.artTitle }</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                </section>
                <section>
                    <div class="heading">娱乐<span style="float: right;font-size:16px;"><a style="color:#FFF;" target="_blank" href="/ssm-tmall/articleMore?type=3">更多 >></a></span></div>
                    <div class="content">
                        <ul class="list">
                            <c:forEach items="${moudle1 }" varStatus="status" var="moudle1">
                              <li><a target="_blank" href="articleDetail?id=${moudle1.artId }">${moudle1.artTitle }</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                </section>
                <section>
                    <div class="heading">推荐<span style="float: right;font-size:16px;"><a style="color:#FFF;" target="_blank" href="/ssm-tmall/articleMore?type=2">更多 >></a></span></div>
                    <div class="content">
                        
                        <c:forEach items="${moudle2 }" varStatus="status" var="moudle2">
                        
                            <c:if test="${status.index < 3 }">
                                <section>
                                    <img src="/ssm-tmall/resource/index/images/thumb${status.index + 4}.jpg"/>
                                    <h4><a target="_blank" href="articleDetail?id=${moudle2.artId }">${moudle2.artTitle }</a></h4>
                                    <p style="height:120px;width:255px;overflow:hidden;">${moudle2.artText }</p>
                                </section>
                            </c:if>
                            
                        </c:forEach>
                    </div>
                </section>
            </div>
        
            <div class="main-content col11">
                
            <c:forEach items="${moudle2 }" varStatus="status" var="moudle2">
                <article>
                    <div class="heading">
                        <h2><a target="_blank"
                                    href="articleDetail?id=${moudle2.artId }">${moudle2.artTitle }</a></h2>
                        <p class="info">${moudle2.artReledate }</p>
                    </div>
                    <div class="content">
                        <img style="width: 195px;height:150px;" src="/ssm-tmall/resource/index/images/thumb${status.index + 1}.jpg"/>
                        <p>${moudle2.artText }</p>
                    </div>
                    <div class="footer">
                        <p class="more"><a target="_blank" class="button" href="articleDetail?id=${moudle2.artId }">查看更多 >></a></p>
                    </div>
                </article>
            </c:forEach>    
            </div>
            
        </div>
    </div>
</section>
<!--------------Footer--------------->
<footer>
    <div class="zerogrid">
        <div class="row">
            <section class="col-1-3">
                <div class="heading">关于我们</div>
                <div class="content">
                    &copy;新程教育 &nbsp;&nbsp;<a href="http://www.j2cms.com" target="_blank">www.j2cms.com</a><br/>
                                                电话:&nbsp;&nbsp;8888-6666<br/>
                                                地址：&nbsp;辰泰科技园新教教育
                </div>
            </section>
            <section class="col-1-3">
                <div class="heading">分类</div>
                <div class="content">
                    <ul>
                        <c:forEach items="${types }" var="type" varStatus="status">
                            <li><a href="/ssm-tmall/articleMore?type=${type.cateId }">${type.cateName }</a></li>
                        </c:forEach>
                    </ul>
                </div>
            </section>
            <section class="col-1-3">
                <div class="heading">精彩相册投稿</div>
                <div class="content">
                    <table border="0px">
                        <tr>
                            <td><img src="/ssm-tmall/resource/index/images/thumb4.jpg"/></td>
                            <td><img src="/ssm-tmall/resource/index/images/thumb5.jpg"/></td>
                            <td><img src="/ssm-tmall/resource/index/images/thumb6.jpg"/></td>
                        </tr>
                        <tr>
                            <td><img src="/ssm-tmall/resource/index/images/thumb6.jpg"/></td>
                            <td><img src="/ssm-tmall/resource/index/images/thumb5.jpg"/></td>
                            <td><img src="/ssm-tmall/resource/index/images/thumb4.jpg"/></td>
                        </tr>
                    </table>
                </div>
            </section>
        </div>
    </div>
</footer>

<div id="copyright">
    &copy;新程教育 &nbsp;&nbsp;<a href="http://www.j2cms.com" target="_blank">www.j2cms.com</a>
</div>

</body></html>23:46 2018/9/23