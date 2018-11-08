<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html >

<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<title>阿拉亲子</title>

<meta name="description" content="" />

<meta name="keywords" />

<link href="resources/css/ddxq.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="resources/js/public.js"></script>
<link href="resources/css/base.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="resources/js/jquery1.42.min.js"></script>
<script type="text/javascript" src="resources/js/popup_layer.js"></script>
<script type="text/javascript" src="resources/js/blk.js"></script>
</script>	
</head>

<body style="background:#f9f9f9;">

<div class="logBox">
		<div class="login">
			<div class="siderNav">
				<ul class="topmenu" id="jq_topmenu">
                <li class="first"><a href="pages/admin/index.jsp">首页</a>|<a>关于我们</a></li>
              
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
        <h3>admin<!--#{admin}--></h3>
        </div>
        	<ul>
            <li class="title2-on"><a href="pages/admin/orderInformation.jsp">我的资料</a></li>
            <li class=""><a href="pages/admin/myOrder.jsp">我的订单</a></li>
            <li class=""><a >意见反馈</a></li>		
            </ul>
        	</div>
        <div class="demo-right">
        <h2>个人资料</h2>
            <table width="400" border="0" class="demo-table">
  <tr>
    <td style="text-align:right">用户名</td>
    <td>${user.username}<a class="ele7">&nbsp;&nbsp;[修改信息]</a></td>
    
  </tr>
  <tr style="display: none">
    <td style="text-align:right">密码</td>
    <td>${user.password}</td>
    
  </tr>
  <tr>
    <td style="text-align:right">手机号</td>
    <td>${user.phone}</td>
    
  </tr>
  <tr>
    <td style="text-align:right">qq号</td>
    <td>${user.qq}</td>
   
  </tr>
  
</table>
				<div class="tsgl-top" id="blk7" style="display: none;">
					<a id="close7" class="closeBtn br ">×</a>
					<form action="<%=basePath%>updatePassword.action" method="post">
						<div class="tsgl-top-p1">
							<label><span class="p1-text">当前用户名</span><input
								name="username" type="text" value="${user.username}"
								readonly="readonly" =/></label>
						</div>
						<div class="tsgl-top-p1">
							<label><span class="p1-text">新密码</span><input
								name="password" type="password" placeholder="请输入新密码" required="required" /></label>
						</div>
						<div class="tsgl-top-p1">
							<label><span class="p1-text">确认密码</span><input
								name="checkPassword" type="password" placeholder="请再次输入密码" required="required"/></label>
						</div><span id="passwordTip" style="color:red;font-size:12px"></span>
						
						<div class="tsgl-top-p1">
							<label><span class="p1-text">手机号</span><input
								name="phone" type="text" value="${user.phone}" placeholder="请输入新手机号" required="required" /></label>
						</div><span id="phoneTip" style="color:red;font-size:12px"></span><span id="phoneTip1" style="color:green;font-size:12px"></span>
						<div class="tsgl-top-p1">
							<label><span class="p1-text">qq</span><input
								name="qq" type="text" value="${user.qq}" placeholder="请输入qq号" required="required"  /></label>
						</div><span id="qqTip" style="color:red;font-size:12px"></span><span id="qqTip1" style="color:green;font-size:12px"></span>

						<div class="c"></div>
						<!-- <a class="tijiao br">提交</a> -->
						<input type="submit" value="提交" class="tijiao br" />
					</form>

				</div>
			</div>
            <div style="clear:both;"></div>
        </div>
       
        
     
</div>

</div>


<div class="footer-b">
        	<ul>
            	<li><a href="pages/admin/index.jsp">首页</a></li>
                <li><a href="pages/admin/qzhd.jsp">亲子活动</a></li>
                <li><a href="pages/admin/qzly.jsp">亲子旅游</a></li>
                <li><a href="pages/admin/index.jsp">区域活动</a></li>
                <li><a href="pages/admin/pw.jsp">票务</a></li>
                <li><a href="pages/admin/hdzs.jsp">活动展示</a></li>
                <div style="clear:both;"></div>
            </ul>
            <p>	COPYRIGHT&nbsp;&nbsp;&nbsp;2015-2016&nbsp;&nbsp;&nbsp;版权所有：阿拉亲子&nbsp;浙IPC备14003668号-2</p>
        </div>

<script type="text/javascript" >
//给确认密码添加一个失去焦点的事件
$("input[name=checkPassword]").blur(function(){
	var password=$("input[name=password]").val();
	var checkPassword=$("input[name=checkPassword]").val();
	if(password!=checkPassword){
		$("#passwordTip").html("<P>*亲，两次密码不一致</p>");
		$("input[name=password]").val("");
		$("input[name=checkPassword]").val("");
		//alert("哈哈");
		//获取焦点
		$("input[name=password]").focus();
	}else{
	$("#passwordTip").html("");
	}
});

 //判断当前手机号是否存在
$("input[name=phone]").blur(function(){
	
	phone1=${user.phone};
	phone2=$("input[name=phone]").val();
	//alert(phone1);
	$.ajax({
		url:'<%=basePath%>isPhoneExists.action',
		type:'post',
		data:{
			phone:$("input[name=phone]").val()
		},
		dataType:'json',
		success:function(result){
			
			if(phone1==phone2){
				//alert("hahh");
				$("#phoneTip1").html("*亲，此手机号未作修改");
			}else{
				$("#phoneTip1").html("");
			if(result!=null){//手机号存在，则给用户一个友好的提示
				$("#phoneTip").html("*亲，此手机号已存在");
				//获取焦点
				 $("input[name=phone]").focus(); 
			}else{
				$("#phoneTip").html("");
			}
			}
		}
	});
	});  
	
  //判断当前qq号是否存在
$("input[name=qq]").blur(function(){
	 qq1=$("input[name=qq]").val()
	qq2=${user.qq}
	//alert(qq2);
	
	$.ajax({
		url:'<%=basePath%>isQQExists.action',
		type:'post',
		data:{
			qq:$("input[name=qq]").val()
		},
		dataType:'json',
		success:function(result){
		if(qq1==qq2){
			$("#qqTip1").html("*亲，此qq号未作修改!");
		}else{
			$("#qqTip1").html("");
			if(result!=null){//手机号存在，则给用户一个友好的提示
				$("#qqTip").html("*亲，此qq号已注册");
				//获取焦点
				 $("input[name=qq]").focus(); 
			}else{
				$("#qqTip").html("");
			}
			}
		}
	});
	});  


</script>
</body>

</html>

