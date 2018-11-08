
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

<meta name="description" content="" />

<meta name="keywords" />

<link href="resources/css/ddxq.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="resources/js/public.js"></script>
<link href="resources/css/base.css" rel="stylesheet" type="text/css" />

</head>

<body style="background:#f9f9f9;">

<div class="logBox">
		<div class="login">
			<div class="siderNav">
				<ul class="topmenu" id="jq_topmenu">
                <li class="first"><a href="<%=basePath%>selectindex.action">首页</a>|<a>关于我们</a></li>
              
				</ul>
			</div>
		</div>
</div>
<div class="main">
    <div class="search-box">
	 	<form class="search-form"  id="search-form">
	 		<input type="text" class="search-text br" id="search_input" autocomplete="off" placeholder="搜索"/>
	 		<input type="submit" class="search-button br" value=""/>
	 	</form>
        <div class="c"></div>
        </div>
<div class="demo">
		
		<div class="demo-left">
        <div class="demo-left-top">
        <p><img src="resources/images/dingdan_03.jpg" /></p>
        <h3><!--#{admin}-->admin</h3>
        </div>
        	<ul>
            <li class="title2-on"><a href="pages/admin/orderInformation.jsp">我的资料</a></li>
            <li class=""><a href="pages/admin/myOrder.jsp">我的订单</a></li>
            <li class=""><a >意见反馈</a></li>		
            </ul>
        	</div>
        <div class="demo-right">
        <h2>订单详情</h2>
            <div class="demo-right-tb">
                <div class="demo-right-th">
                    <p>${oname }<span><img src="resources/images/sc_03.jpg" /></span></p>
                </div>
                <div class="demo-right-tr">
                	<p class="demo-right-s1">目的地：${odizhi }</p>
                    <p class="demo-right-s2">联系人信息</p>
                    <div style="clear:both;"></div>
                </div>
                <div style="clear:both;"></div>
                <div class="demo-right-tr">
                	<p class="demo-right-s1">出行方式：自驾</p>
                    <p class="demo-right-s2">姓名：${uname }</p>
                    <div style="clear:both;"></div>
                </div>
                <div style="clear:both;"></div>
                <div class="demo-right-tr">
                	<p class="demo-right-s1">订购信息：${omessage }</p>
                    <p class="demo-right-s2">手机号：${uphone }</p>
                    <div style="clear:both;"></div>
                </div>
                <div style="clear:both;"></div>
                <div class="demo-right-tr">
                	<!-- <p class="demo-right-s1" style="text-indent:80px;">儿童，1人，￥80/人</p> -->
                    <p class="demo-right-s2">备注：${ut }</p>
                    <div style="clear:both;"></div>
                </div>
                <div class="demo-right-tr">
                	<p class="demo-right-s1 demo-right-last1">
                    	<span>实际付款：￥<b>${omoney }</b></span>
                    </p>
                    <p class="demo-right-s2 demo-right-last2"></p>
                    <div style="clear:both;"></div>
                </div>
            </div>
        </div>
            <div style="clear:both;"></div>
        </div>
     
</div>

</div>


<div class="footer-b">
        	<ul>
            	<li><a href="<%=basePath%>selectindex.action">首页</a></li>
                <li><a href="<%=basePath%>selectHdtype.action">亲子活动</a></li>
                <a href="<%=basePath%>selectly.action">亲子旅游</a></li>
                <!-- <li><a href="index.jsp">区域活动</a></li>
                <li><a href="pages/admin/ticketService.jsp">票务</a></li> -->
                <li><a href="<%=basePath%>selecthd.action">活动展示</a></li>
                <div style="clear:both;"></div>
            </ul>
            <p>	COPYRIGHT&nbsp;&nbsp;&nbsp;2015-2016&nbsp;&nbsp;&nbsp;版权所有：阿拉亲子&nbsp;浙IPC备14003668号-2</p>
        </div>


</body>

</html>

