<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>阿拉亲子</title>

<link rel="stylesheet" href="resources/css/hdzs.css" type="text/css" />
<script type="text/javascript" src="resources/js/common.min.js"></script>
<script type="text/javascript" src="resources/js/jquery1.42.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="resources/js/public.js"></script>
</head>

<body>
	
	<div id="web">	
		
<div class="topall">
	<div class="top-line">
    <div class="top-line-box">
    <c:choose>
        <c:when test="${user.username!=null }">您好，${user.username }
   <a href="<%=basePath%>sessionInvalidate.action">退出</a>
        </c:when>
    <c:otherwise>
    <a href="pages/admin/login.jsp">登录</a>
    <a href="pages/admin/register.jsp" class="top-line-a-on">注册</a>
    </c:otherwise>
    </c:choose>
    
    
    
    <form class="search-form"  id="search-form">
	 		<input type="text" class="search-text" name="q" id="search_input" autocomplete="off" placeholder="请输入搜索关键字"/>
	 		<input type="submit" class="search-button" value=""/>
	 	</form>
        </div>
    </div>
    <div  style="clear:both;"></div>
  <div class="top">
  <img src="resources/images/denglu_02.jpg" />
  <img src="resources/images/index_03.jpg" style="float:right;" />
  </div>
</div>
<div class="nav">
  <ul>
   <li ><a href="<%=basePath%>selectindex.action">首页</a></li>
    <li><a href="<%=basePath%>selectHdtype.action">亲子活动</a></li>
   <!-- <li><a href="qzly-1.jsp">亲子旅游</a></li>-->
    <li><a href="<%=basePath%>selectly.action">亲子旅游</a></li>
    <li class="wbg"><a href="<%=basePath%>selecthd.action">活动展示</a></li>
    <li><a>关于我们</a></li>
  </ul>
</div>
<!--heder end-->
		
		<div class="banner">			
			<div class="bd">
				<ul class="fixed">
				<li style=" background:url(resources/images/index_02.jpg) 50% 0 no-repeat"><a href="cn/#"></a></li>
				<li style=" background:url(resources/images/lunbo.jpg) 50% 0 no-repeat"><a href="cn/#"></a></li>
				<li style=" background:url(resources/images/qingzida.jpg) 50% 0 no-repeat"><a href="cn/#"></a></li>
				</ul>
			</div>
			<div class="hd"><ul class="fixed"><li class="on"></li><li class=""></li><li class=""></li></ul></div>
		</div>
		<script type="text/javascript">
			jQuery(".banner").slide({ titCell:".hd ul", mainCell:".bd ul", effect:"left", autoPage:"<li></li>", autoPlay:true, effect:"fold"})
		</script>
		<!--banner end-->
		
		<div class="main">
        
                
			
            
            
            
            
            <div class="hdzs">
            	<div class="title">
                    <p><i>S</i><b>活动展示</b><span>show</span></p>
                    </div>
                 	<ul class="hdzs-main" >
									
                        <c:forEach items="${hd}" var="list">
					        <li><a href="pages/admin/parent-offspring_activity.jsp"><img src="resources/images/"+${list.hdpicture } width="236" height="185"/></a>					                                    <span>${list.hdname }</span>
                            </li>
                        </c:forEach>
							<div style="clear:both;"></div>		
					</ul>
                    <div class="page-normal">
                <span class="page-current">1</span>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#">6</a>
                <a href="#">7</a>
                <a href="#" class="page-next">下一页</a>
                
              
            </div>
            </div>
		</div>
		<!--main end-->
		
	<!--footer end-->
<div class="footer-b">
        	<ul>
            	<li><a href="<%=basePath%>selectindex.action">首页</a></li>
                <li><a href="pages/admin/parent-offspring_activity_in.jsp">亲子活动</a></li>
              <!--  <li><a href="qzly.jsp">亲子旅游</a></li>-->
               <!-- <li><a href="index.jsp">区域活动</a></li>-->
                <li><a href="<%=basePath%>selectly.action">亲子旅游</a></li>
                <li><a href="<%=basePath%>selecthd.action">活动展示</a></li>
                <div style="clear:both;"></div>
            </ul>
            <p>	COPYRIGHT&nbsp;&nbsp;&nbsp;2015-2016&nbsp;&nbsp;&nbsp;版权所有：阿拉亲子&nbsp;浙IPC备14003668号-2</p>
        </div>

		
	</div>
<script id="jsID" type="text/javascript">
		 var ary = location.href.split("&");
		jQuery(".slideBox").slide( { mainCell:".bd ul", effect:ary[1],autoPlay:ary[2],trigger:ary[3],easing:ary[4],delayTime:ary[5],mouseOverStop:ary[6],pnLoop:ary[7] });
		</script>
      
</body></html>