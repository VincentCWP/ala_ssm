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
    <form method="post" class="form-x" action="<%=basePath%>/updatepc.action?lyid=${pcly.lyid }" enctype="multipart/form-data">  
      <div class="form-group">
      
        <div class="label">
          <label>活动名称：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50"  name="lyname"  value="${pcly.lyname }" data-validate="required:请输入活动名称" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>图片：</label>
        </div>
        <div class="field">
          <input type="file" id="url1" name="myfile" class="input tips" style="width:25%; float:left;"  value="${pcly.lypicture }"  data-toggle="hover" data-place="right" data-image="" />
          <input type="button" class="button bg-blue margin-left" id="image1" value="上传图片"  style="float:left;">
          <div class="tipss">图片尺寸：300*300</div>
        </div>
      </div>     
      
      <div class="form-group">
        <div class="label">
          <label>旅游时长：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="lytype" value="${pcly.lytype } " />
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>旅游目的地：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="lyaddress" value="${pcly.lyaddress } " />
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>成人单价（元）：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="lypriceA"  value="${pcly.lypriceA} "/>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>儿童单价（元）：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="lypriceB"  value="${pcly.lypriceB } "/>
        </div>
      </div>
      
      
      <div class="form-group">
        <div class="label">
          <label>最低年龄：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="lyage"  value="${pcly.lyage } "/>
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