<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
    <form method="post" class="form-x" action="<%=basePath%>/updateoo.action?id=${order.id }" enctype="multipart/form-data" >  
      <div class="form-group">
      
        <div class="label">
          <label>订单名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50"  name="oname"  value="${order.oname }" data-validate="required:请输入活动名称" />
          <div class="tips"></div>
        </div>
      </div>
         
      
      <div class="form-group">
        <div class="label">
          <label>订购信息：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="omessage" value="${order.omessage }" />
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>目的地：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="odizhi" value="${order.odizhi }" />
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>实付款：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="omoney"  value="${order.omoney }"/>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>交易状态：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="ostate"  value="${order.ostate }"/>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>出行方式：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="ochuxing"  value="${order.ochuxing }"/>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>联系人电话：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="uphone"  value="${order.uphone }"/>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>联系人备注：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="ut"  value="${order.ut }"/>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>联系人姓名：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="uname"  value="${order.uname }"/>
        </div>
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