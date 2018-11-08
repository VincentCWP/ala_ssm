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

<link rel="stylesheet" href="resources/css/qzly-1.css" type="text/css" />
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
    <li class="wbg"><a href="pages/admin/parent-offspring_travling.jsp">亲子旅游</a></li>
   <!-- <li><a href="pw.jsp">票务</a></li>-->
    <li ><a href="<%=basePath%>selecthd.action">活动展示</a></li>
    <li><a>关于我们</a></li>
  </ul>
</div>

		<div class="main">
            <div class="qzly">
            	<div class="title">
                    <p><i>T</i><b>亲子旅游</b><span>tourism</span></p>
                    
                    </div>
                    <div class="qzly-main">
                    	<div class="content2-main">
			<div class="hd">


				<ul>
				<c:forEach items="${lytype}" var="list1">
                <li>${list1.lytype }</li>
                </c:forEach>
                </ul>
			</div>
			<div class="bd">
				<ul>
				<c:forEach items="${ly}" var="list">
				<li><a href="pages/admin/parent-offspring_activity.jsp"><img src="resources/images/${list.lypicture }" width="205"  height="138"/></a>
                    <div>
                    <b>${list.lyname }</b>
                    <span>地址：${list.lyaddress }</span>
                    <span>费用：成人票：${list.lypriceA }元/人；儿童票：${list.lypriceB }元</span>
                    <span>年龄：${list.lyage }岁以上</span>
                    </div>
                    </li>
                </c:forEach>
                     <div style="clear:both;"></div>
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
                   
				</ul>
			</div>
		</div>
        <div style="clear:both;"></div>
                    </div>
            </div>
            
            
            
		</div>
		<!--main end-->
		
	<!--footer end-->
<div class="footer-b">
        	<ul>
            	<li><a href="<%=basePath%>selectindex.action">首页</a></li>
                <li><a href="<%=basePath%>selectHdtype.action">亲子活动</a></li>
                <li><a href="<%=basePath%>selectly.action">亲子旅游</a></li>
                <%-- <li><a href="<%=basePath%>selectindex.action">区域活动</a></li> --%>
                <!-- <li><a href="pages/admin/pw.jsp">票务</a></li> -->
                <li><a href="<%=basePath%>selecthd.action">活动展示</a></li>
                <div style="clear:both;"></div>
            </ul>
            <p>	COPYRIGHT&nbsp;&nbsp;&nbsp;2015-2016&nbsp;&nbsp;&nbsp;版权所有：阿拉亲子&nbsp;浙IPC备14003668号-2</p>
        </div>

		
	</div>
<script>$(".top-line-box a").click(function(){
	  	$(this).siblings().removeClass('top-line-a-on');
			$(this).addClass("top-line-a-on");
        });</script>


</body></html>