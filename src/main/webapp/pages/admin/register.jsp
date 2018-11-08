<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<script type="text/javascript" src="resources/js/jquery1.42.min.js"></script>
<script language="javascript" type="text/javascript" src="resources/js/jquery.validate.js"></script>
<script language="javascript" type="text/javascript" src="resources/js/validate_expand.js"></script>
<!-- <script language="javascript" type="text/javascript" src="resources/js/validate.js"></script> -->
<script type="text/javascript">
$(document).ready(function(){
	initValidator();
});
</script>
<link href="resources/css/regist.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="content">
  <div class="demo">
  <div class="title"><img src="resources/images/demo_03.jpg" /><p>账号注册</p>
  <div class="c"></div>
  </div>
	<form id="thisForm" method="post" action="<%=basePath%>addUser.action">
	<table width="50%">
		<tr>
			<td class="tdcon"><span style="color:#F00;">*</span>用户名：</td>
			<td>
				<input class="stext" type='text' name="username" id="userName" placeholder="请输入2-12位数字字母下划线组合" pattern="\w{2,12}" required="required" /><br/x><br/><span id="usernameTip" style="color:red"></span>
				<div class="tipinfo"></div>
			</td>
		</tr>
		<tr>
			<td class="tdcon"><span style="color:#F00;">*</span>密码：</td>
			<td>
				<input class="stext" type="password" name="password" id="passWord" pattern="[0-9a-zA-Z]{3,12}" required="required" placeholder="请输入3-12位的数字或字母组合" />
				<div class="tipinfo"></div>
			</td>
		</tr>
		<tr>
			<td class="tdcon"><span style="color:#F00;">*</span>确认密码：</td>
			<td>
				<input class="stext" type='password' name="checkPassword" id="passWordAgain" pattern="[0-9a-zA-Z]{3,12}" required="required" placeholder="请输入3-12位的数字或字母组合" /><br /><br/><span id="passwordTip" style="color:red;font-size:12px"></span>
				<div class="tipinfo"></div>
			</td>
		</tr>
		<tr>
			<td class="tdcon"><span style="color:#F00;">*</span>邮箱：</td>
			<td>
				<input class="stext" type="email" name="email" id="email" required="required" placeholder="请输入正确的邮箱格式"/><br/><br/><span id="emailTip" style="color:red;font-size:12px"></span>
				<div class="tipinfo"></div>
			</td>
		</tr>
		<tr>
			<td class="tdcon"><span style="color:#F00;">*</span>手机号码：</td>
			<td>
				<input class="stext" type='text' name="phone" id="sms" pattern="1[3578]\d{9}" required="required" placeholder="请输入11位手机号" /><br/><br/><span id="phoneTip" style="color:red;font-size:12px"></span>
				<div class="tipinfo"></div>
			</td>
		</tr>
		<tr>
			<td class="tdcon"><span style="color:#F00;">*</span>居住地：</td>
			<td>
				<select name="address" style=" width:150px; border-color:#ddd;">
				  <option>湖南</option>
				  <option>四川</option>
				  <option selected="selected">湖北</option>
				  <option>广东</option>
				  <option>广西</option>
				  <option>河北</option>
				  <option>河南</option>
				  <option>新疆</option>
				  <option>山西</option>
				  <option>辽宁</option>
				  <option>吉林</option>
				  <option>江苏</option>
				  <option>浙江</option>
				  <option>安徽</option>
				  <option>北京</option>
				  <option>天津</option>
				  <option>上海</option>
				  <option>重庆</option>
				  <option>福建</option>
				  <option>江西</option>
				  <option>山东</option>
				  <option>海南</option>
				  
				  
				</select>
				<div class="tipinfo"></div>
			</td>
		</tr>
        <tr>
			<td class="tdcon"><span style="color:#F00;">*</span>QQ：</td>
			<td>
				<input class="stext" type='text' name="qq" pattern="[1-9][0-9]{5,9}" required="required" placeholder="请输入6~10位qq号"/><br/><br/><span id="qqTip" style="color:red;font-size:12px"></span>
				<div class="tipinfo"></div>
			</td>
		</tr>
        
        
        <tr>
			<td class="tdcon"><span style="color:#F00;">*</span>宝宝姓名：</td>
			<td>
				<input class="stext" type='text' name="babyname" required="required" placeholder="请输入宝宝的姓名"/>
				<div class="tipinfo"></div>
			</td>
		</tr>
		
		<tr style="display: none">
			<td class="tdcon"><span style="color:#F00;">*</span>权限默认为2：</td>
			<td>
				<input class="stext" type='text' name="role" value="2"></input>
				<div class="tipinfo"></div>
			</td>
		</tr>
        
        <tr >
			<td class="tdcon" colspan="2">
             <p class="clearfix agreement">
        	<input type="checkbox" />
            <b class="left" style="font-weight:normal;">我已经阅读并接受<a style=" color:#2ba0bb;">《阿拉亲子用户协议》</a></b>
        </p>
            </td>
			
		</tr>
        
        
		<tr>
			
            <td style="width:50px;"></td>
			<td id="submit"><input id="shaol" type="submit" value="立即注册" class="Button br" disabled="disabled" style="background:gray">
            </td>
            
		</tr>
	</table>
	</form>
    
    <div class="erweima">
    <p>已有阿拉亲子论坛账号？ 立即登录</p>
    <img src="resources/images/demo_07.jpg" width="170" height="170"/>
    <p>「最新资讯 请关注我们的微信号」</p>
    </div>
</div>

</div>
<script type="text/javascript">
//给确认密码添加一个失去焦点的事件
$("input[name=checkPassword]").blur(function(){
	var password=$("input[name=password]").val();
	var checkPassword=$("input[name=checkPassword]").val();
	if(password!=checkPassword){
		$("#passwordTip").html("*亲，两次密码不一致");
		$("input[name=password]").val("");
		$("input[name=checkPassword]").val("");
		//alert("哈哈");
		//获取焦点
		$("input[name=password]").focus();
	}else{
		$("#passwordTip").html("");
	}
});

 //判断用户是否勾选协议
$("input[type=checkbox]").click(function(){
	//1、首先获取复选框的状态值
	
	var flag = $("input[type=checkbox]").attr("checked");
	//alert(flag);
	//2、判断是否被选中
	if(flag==undefined || flag==false){//没有选中
		$("#shaol").attr("disabled","disabled");
		$("#shaol").css("background","gray");
		$("input[type=checkbox]").attr("checked",false);
	}else{
		
		$("#shaol").removeAttr("disabled");
		$("#shaol").css("background","#F9530A");
		$("input[type=checkbox]").attr("checked",true);
		
	}
	
}); 

//判断当前用户名是否存在
$("input[name=username]").blur(function(){
	$.ajax({
		url:'<%=basePath%>isUserExists.action',
		type:'post',
		data:{
			username:$("input[name=username]").val()
		},
		dataType:'json',
		success:function(result){
			//alert(result);
			if(result!=null){//用户名存在，则给用户一个友好的提示
				$("#usernameTip").html("*亲，此用户名已存在");
				//获取焦点
				$("input[name=username]").focus();
			}else{
				$("#usernameTip").html("");
			}
		}
	});
	});
	
 //判断当前手机号是否存在
$("input[name=phone]").blur(function(){
	$.ajax({
		url:'<%=basePath%>isPhoneExists.action',
		type:'post',
		data:{
			phone:$("input[name=phone]").val()
		},
		dataType:'json',
		success:function(result){
			if(result!=null){//手机号存在，则给用户一个友好的提示
				$("#phoneTip").html("*亲，此手机号已存在");
				//获取焦点
				$("input[name=phone]").focus();
			}else{
				$("#phoneTip").html("");
			}
		}
	});
	}); 
 
//判断当前qq号是否存在
$("input[name=qq]").blur(function(){
	$.ajax({
		url:'<%=basePath%>isQQExists.action',
		type:'post',
		data:{
			qq:$("input[name=qq]").val()
		},
		dataType:'json',
		success:function(result){
			if(result!=null){//手机号存在，则给用户一个友好的提示
				$("#qqTip").html("*亲，此QQ号已注册");
				//获取焦点
				$("input[name=qq]").focus();
			}else{
				$("#qqTip").html("");
			}
		}
	});
	}); 
	
//判断当前email号是否存在
$("input[name=email]").blur(function(){
	$.ajax({
		url:'<%=basePath%>isEmailExists.action',
		type:'post',
		data:{
			email:$("input[name=email]").val()
		},
		dataType:'json',
		success:function(result){
			//alert(result);
			if(result!=null){//手机号存在，则给用户一个友好的提示
				$("#emailTip").html("*亲，此邮箱已注册");
				//获取焦点
				$("input[name=email]").focus();
			}else{
				$("#emailTip").html("");
			}
		}
	});
	}); 
</script>



</body>
</html>