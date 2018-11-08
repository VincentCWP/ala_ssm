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
<title></title>
<link rel="stylesheet" href="resources/css/pintuer.css">
<link rel="stylesheet" href="resources/css/admin.css">
<script src="resources/frontjs/js/jquery.js"></script>
<script src="resources/frontjs/js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 修改会员密码</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="<%=basePath%>/updatepp.action?username=${user.username}">
      <div class="form-group">
        <div class="label">
          <label for="sitename">管理员帐号：</label>
        </div>
        <div class="field">
          <label style="line-height:33px;">
           ${user.username}
          </label>
        </div>
      </div>      
           
      <div class="form-group">
        <div class="label">
          <label for="sitename">请输入新密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" name="password" size="50" placeholder="请输入新密码" />         
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label for="sitename">请输入新号码：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="phone" size="50" placeholder="请输入新号码" />         
        </div>
      </div>
      
      
      <div class="form-group">
        <div class="label">
          <label for="sitename">请输入新邮箱：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="email" size="50" placeholder="请输入新邮箱" />         
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label for="sitename">请输入新地址：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="address" size="50" placeholder="请输入新地址" />         
        </div>
      </div>
      
      
      
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>   
        </div>
      </div>      
    </form>
  </div>
</div>
</body></html>