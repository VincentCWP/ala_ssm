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
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加内容</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="<%=basePath%>/updateus.action?userID=${userA.userID }" >  
      <div class="form-group">
      
        <div class="label">
          <label>姓名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50"  name="username"  value="${userA.username }"  />
          <div class="tips"></div>
        </div>
      </div>
          
      <div class="form-group">
        <div class="label">
          <label>密码：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="password" value="${userA.password } " />
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>电话：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="phone" value="${userA.phone } " />
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>邮箱：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="email"  value="${userA.email } "/>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>地址：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="address"  value="${userA.address } "/>
        </div>
      </div>
      
      
      <div class="form-group">
        <div class="label">
          <label>是否解除管理员权限：</label>
        </div>
        <div class="field">
          <%-- <input type="text" class="input" name="lyage"  value="${userA.role } "/> --%>
          <input type="radio" name="role" value="2" checked="checked" />是
		  <input type="radio" name="role" value="1" />否
        </div>
      </div>
     
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>

</body></html>