
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
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

<link rel="stylesheet" href="resources/css/tjdd.css" type="text/css" />



</head>

<body>
	
	<div id="web">	
		
<div class="topall">
	<div class="top-line">
    <div class="top-line-box">
    <a>登录</a><a class="top-line-a-on">注册</a><form class="search-form"  id="search-form">
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
    <li><a href="<%=basePath%>selectly.action">亲子旅游</a></li>
    <!-- <li><a href="pages/admin/ticketService.jsp">票务</a></li> -->
    <li  class="wbg"><a href="<%=basePath%>selecthd.action">活动展示</a></li>
    <li><a>关于我们</a></li>
  </ul>
</div>
		
		<div class="main">
            <div class="back">当前位置：首页&gt;活动展示&gt;订单确认</div>
				   
              <div class="main-top">
              	<h2>订单信息 </h2>
                <span>${hdname }</span>
                <div class="main-top-box">
                <p>目的地：${hdaddress }</p>
                <p>出行方式：自驾</p>
                <p>订购信息：成人，${num1 }人，￥${hdprice }/人<b>儿童，${num2 }人，￥${hdprice }/人</b></p>
                <div style="clear:both;"></div>
                </div>
              </div>
              <div class="main-mid">
              <form action="<%=basePath%>toordetrDetails.action" method="post">
              	<h2>联系人信息<span>（订单信息会发送至您的手机，请您保持手机畅通）</span></h2>
                <div class="main-mid-box">
          <input id="oname" type="hidden" name="oname" value="${hdname }">
          <input id="odizhi" type="hidden" name="odizhi" value="${hdaddress }">
          <input id="ochuxing" type="hidden" name="ochuxing" value="自驾">
          <input id="omessage" type="hidden" name="omessage" value="成人，${num1 }人，￥${hdprice }/人<b>儿童，${num2 }人，￥${hdprice }/人">
          <input id="omoney" type="hidden" name="omoney" value="${tot }">
                <label><span>姓&nbsp;&nbsp;&nbsp;名：</span><input name="uname" type="text" style="width:150px;" /></label>
                <label><span>手机号：</span><input name="uphone" type="text"  style="width:150px;"/></label>
                <label><span>备&nbsp;&nbsp;&nbsp;注：</span><textarea name="ut" cols="" rows="" style="height:50px; width:300px; resize:none;"></textarea></label>
                  <div style="clear:both;"></div>
                </div>
              </div>
              <div class="main-bot">
              <span>应付总额：<i>￥</i><b>${tot }</b></span>
              <input type="submit" class="ele7" value="提交订单" />
              <%-- <a href="<%=basePath%>toordetrDetails.action"  class="ele7">提交订单</a> --%> 
              </div>
              </form>
                <div class="xd-blk" id="blk7" style="display:none;">
      		<h3>提示</h3>
                <div class="content-line xd-blk1" > 
						<p>为保障你的帐号，请先帮助我们验证你的身份！</p>
                        <span>客服热线：<b>415654646</b></span>
                    </div>
                <a class="closebut" id="close7"></a>
              </div>    
                    
                    
            </div>
		</div>
		<div class="footer-b">
        	<ul>
            	<li><a href="<%=basePath%>selectindex.action">首页</a></li>
                <li><a href="<%=basePath%>selectHdtype.action">亲子活动</a></li>
                <li><a href="<%=basePath%>selectly.action">亲子旅游</a></li>
                <!-- <li><a href="pages/admin/index.jsp">区域活动</a></li>
                <li><a href="pages/admin/pw.jsp">票务</a></li> -->
                <li><a href="<%=basePath%>selecthd.action">活动展示</a></li>
                <div style="clear:both;"></div>
            </ul>
            <p>	COPYRIGHT&nbsp;&nbsp;&nbsp;2015-2016&nbsp;&nbsp;&nbsp;版权所有：阿拉亲子&nbsp;浙IPC备14003668号-2</p>
        </div>

	</div>
    <script type="text/javascript" src="resources/js/jquery1.42.min.js"></script>
  <script type="text/javascript" src="resources/js/popup_layer.js"></script> 
  <script type="text/javascript" src="resources/js/blk1.js"></script>

</body></html>