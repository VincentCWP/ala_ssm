<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>阿拉亲子旅游后台管理中心</title>  
    <link rel="stylesheet" href="resources/css/pintuer.css">
    <link rel="stylesheet" href="resources/css/admin.css">
    <script src="resources/js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="resources/images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />阿拉亲子旅游后台管理中心</h1>
  </div>
  
  <div class="head-l"><a class="button button-little bg-green" href="" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;<a href="##" class="button button-little bg-blue"><span class="icon-wrench"></span> 清除缓存</a> &nbsp;&nbsp;<a class="button button-little bg-red" href="pages/admin/login.jsp"><span class="icon-power-off"></span> 退出登录</a><a style="margin-left:600px;" href="##" class="button button-little bg-blue"><span class=""></span>用户：${user.username }</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>基本设置</h2>
  <ul style="display:block">
    <!-- <li><a href="pages/admin/info.jsp" target="right"><span class="icon-caret-right"></span>网站设置</a></li> -->
    
    <li><a href="<%=basePath%>/find.action" target="right"><span class="icon-caret-right"></span>亲子活动</a></li>
    <li><a href="<%=basePath%>/findpc.action" target="right"><span class="icon-caret-right"></span>亲子旅游</a></li>
    <li><a href="<%=basePath%>/findoo.action" target="right"><span class="icon-caret-right"></span>订单管理</a></li>
    <li><a href="<%=basePath%>/findus.action" target="right"><span class="icon-caret-right"></span>管理员系统</a></li>
    <li><a href="<%=basePath%>/findall.action" target="right"><span class="icon-caret-right"></span>会员管理</a></li>
     
    
    <!-- <li><a href="pages//column.jsp" target="right"><span class="icon-caret-right"></span>栏目管理</a></li> -->
  </ul>   
  <h2><span class="icon-pencil-square-o"></span>个人中心</h2>
  <ul>
    <li><a href="pages/admin/pass.jsp" target="right"><span class="icon-caret-right"></span>修改信息</a></li>
  </ul>  
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a href="{:U('Index/info')}" target="right" class="icon-home"> 首页</a></li>
  <li><a href="##" id="a_leader_txt">网站信息</a></li>
  <li><b>当前语言：</b><span style="color:red;">中文</php></span>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;切换语言：<a href="##">中文</a> &nbsp;&nbsp;<a href="##">英文</a> </li>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="<%=basePath%>/find.action" name="right" width="100%" height="100%"></iframe>
</div>
</body>
</html>