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

<link rel="stylesheet" href="resources/css/pw.css" type="text/css" />
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
    <li><a href="<%=basePath%>selectly.action">亲子旅游</a></li>
    <!-- <li class="wbg"><a href="pages/admin/ticketService.jsp">票务</a></li> -->
    <li ><a href="<%=basePath%>selecthd.action">活动展示</a></li>
    <li><a>关于我们</a></li>
  </ul>
</div>
		
		<div class="main">
                 <div style=" clear:both;"></div>
			<div class="qzhd">
            <div class="qzhd-back">阿拉亲子&gt;票务</div>
				   <div class="qzhd-all">
                  <h2>您已选择：<span>共有<i>131</i>条活动信息</span></h2>
                  <div class="qzhd-all-d" ><p>区域：</p><a class="all-p-a">全部</a><a>宁波中心区</a><a>北仑区</a><a>慈溪</a><a>余姚</a><a>宁海</a><a>象山</a><a>奉化</a></div>
                  <div class="qzhd-all-d" ><p>商家活动：</p><a class="all-p-a">全部</a><a>户外亲子</a><a>室内亲子</a><a>亲子DIY</a><a>农家乐采摘</a><a>儿童剧</a></div>
                  <div  class="qzhd-all-d"><p>时间：</p><a class="all-p-a">全部</a><a>今天</a><a>最近一周</a><a>网期活动</a></div>
  					</div>
                    
                    
                    <ul class="pw-main" >
									<li><a href="parent-offspring_activity.jsp"><img src="resources/images/亲子活动展示照片/风景9.jpg"  width="322" height="247"/></a>					                                    <div class="pw-li-t">
                                    <p>海南岛乐园门票</p>
                                    <a><b>￥</b>345</a>
                                    <span>门店价<b>￥460</b></span>
                                    <div class="pw-li-t-d">
                                    <a href="submitOrder.jsp"> 立即购买</a>&gt;&gt;
                                    </div>
                                    </div>
                                    </li>
                                    <li style="margin:0px 10px"><a href="pages/admin/parent-offspring_activity.jsp"><img src="resources/images/亲子活动展示照片/风景13.jpg"  width="322" height="247"/></a>					                                    <div class="pw-li-t">
                                    <p>香山乐园门票</p>
                                    <a><b>￥</b>295</a>
                                    <span>门店价<b>￥360</b></span>
                                    <div class="pw-li-t-d">
                                    <a href="pages/admin/submitOrder.jsp"> 立即购买</a>&gt;&gt;
                                    </div>
                                    </div>
                                    </li>
                                    <li><a href="pages/admin/parent-offspring_activity.jsp"><img src="resources/images/亲子活动展示照片/风景14.jpg"  width="322" height="247"/></a>					                                    <div class="pw-li-t">
                                    <p>马尔代夫乐园门票</p>
                                    <a><b>￥</b>1145</a>
                                    <span>门店价<b>￥1360</b></span>
                                    <div class="pw-li-t-d">
                                    <a href="pages/admin/submitOrder.jsp"> 立即购买</a>&gt;&gt;
                                    </div>
                                    </div>
                                    </li>
									<li><a href="pages/admin/parent-offspring_activity.jsp"><img src="resources/images/亲子活动展示照片/风景15.jpg"  width="322" height="247"/></a>					                                    <div class="pw-li-t">
                                    <p>山海关乐园门票</p>
                                    <a><b>￥</b>445</a>
                                    <span>门店价<b>￥660</b></span>
                                    <div class="pw-li-t-d">
                                    <a href="pages/admin/submitOrder.jsp"> 立即购买</a>&gt;&gt;
                                    </div>
                                    </div>
                                    </li>
                                    <li style="margin:0px 10px"><a href="pages/admin/parent-offspring_activity.jsp"><img src="resources/images/亲子活动展示照片/风景1g.jpg"  width="322" height="247"/></a>					                                    <div class="pw-li-t">
                                    <p>五台山乐园门票</p>
                                    <a><b>￥</b>195</a>
                                    <span>门店价<b>￥260</b></span>
                                    <div class="pw-li-t-d">
                                    <a href="pages/admin/submitOrder.jsp"> 立即购买</a>&gt;&gt;
                                    </div>
                                    </div>
                                    </li>
                                    <li><a href="pages/admin/parent-offspring_activity.jsp"><img src="resources/images/亲子活动展示照片/风景2.jpg"  width="322" height="247"/></a>					                                    <div class="pw-li-t">
                                    <p>屯溪乐园门票</p>
                                    <a><b>￥</b>645</a>
                                    <span>门店价<b>￥860</b></span>
                                    <div class="pw-li-t-d">
                                    <a href="submitOrder.jsp"> 立即购买</a>&gt;&gt;
                                    </div>
                                    </div>
                                    </li>
                                    
                                    <li><a href="pages/admin/parent-offspring_activity.jsp"><img src="resources/images/亲子活动展示照片/风景3.jpg"  width="322" height="247"/></a>					                                    <div class="pw-li-t">
                                    <p>南京路乐园门票</p>
                                    <a><b>￥</b>245</a>
                                    <span>门店价<b>￥360</b></span>
                                    <div class="pw-li-t-d">
                                    <a href="submitOrder.jsp"> 立即购买</a>&gt;&gt;
                                    </div>
                                    </div>
                                    </li>
                                    <li style="margin:0px 10px"><a href="pages/admin/parent-offspring_activity.jsp"><img src="resources/images/亲子活动展示照片/风景4.jpg"  width="322" height="247"/></a>					                                    <div class="pw-li-t">
                                    <p>兰亭乐园门票</p>
                                    <a><b>￥</b>359</a>
                                    <span>门店价<b>￥566</b></span>
                                    <div class="pw-li-t-d">
                                    <a href="pages/admin/submitOrder.jsp"> 立即购买</a>&gt;&gt;
                                    </div>
                                    </div>
                                    </li>
                                    <li><a href="pages/admin/parent-offspring_activity.jsp"><img src="resources/images/亲子活动展示照片/风景5.jpg"  width="322" height="247"/></a>					                                    <div class="pw-li-t">
                                    <p>欢乐谷乐园门票</p>
                                    <a><b>￥</b>175</a>
                                    <span>门店价<b>￥200</b></span>
                                    <div class="pw-li-t-d">
                                    <a href="pages/admin/submitOrder.jsp"> 立即购买</a>&gt;&gt;
                                    </div>
                                    </div>
                                    </li>
									<li><a href="pages/admin/parent-offspring_activity.jsp"><img src="resources/images/亲子活动展示照片/风景6.jpg"  width="322" height="247"/></a>					                                    <div class="pw-li-t">
                                    <p>太湖乐园门票</p>
                                    <a><b>￥</b>445</a>
                                    <span>门店价<b>￥560</b></span>
                                    <div class="pw-li-t-d">
                                    <a href="pages/admin/submitOrder.jsp"> 立即购买</a>&gt;&gt;
                                    </div>
                                    </div>
                                    </li>
                                    <li style="margin:0px 10px"><a href="pages/admin/parent-offspring_activity.jsp"><img src="resources/images/亲子活动展示照片/风景61.jpg"  width="322" height="247"/></a>					                                    <div class="pw-li-t">
                                    <p>海底世界乐园门票</p>
                                    <a><b>￥</b>145</a>
                                    <span>门店价<b>￥200</b></span>
                                    <div class="pw-li-t-d">
                                    <a href="pages/admin/submitOrder.jsp"> 立即购买</a>&gt;&gt;
                                    </div>
                                    </div>
                                    </li>
                                    <li><a href="pages/admin/parent-offspring_activity.jsp"><img src="resources/images/亲子活动展示照片/风景7.jpg"  width="322" height="247"/></a>					                                    <div class="pw-li-t">
                                    <p>印度乐园门票</p>
                                    <a><b>￥</b>1165</a>
                                    <span>门店价<b>￥1560</b></span>
                                    <div class="pw-li-t-d">
                                    <a href="pages/admin/submitOrder.jsp"> 立即购买</a>&gt;&gt;
                                    </div>
                                    </div>
                                    </li>
							<div style="clear:both;"></div>		
					</ul>
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
            </div>
		</div>
		<div class="footer-b">
        	<ul>
            	<li><a href="<%=basePath%>selectindex.action">首页</a></li>
               
                <li><a href="<%=basePath%>selectHdtype.action">亲子活动</a></li>
                <li><a href="<%=basePath%>selectly.action">亲子旅游</a></li>
                <!-- <li><a href="pages/admin/index.jsp">区域活动</a></li> -->
               <!-- <li><a href="pw.jsp">票务</a></li>-->
                <li><a href="<%=basePath%>selecthd.action">活动展示</a></li>
                <div style="clear:both;"></div>
            </ul>
            <p>	COPYRIGHT&nbsp;&nbsp;&nbsp;2015-2016&nbsp;&nbsp;&nbsp;版权所有：阿拉亲子&nbsp;浙IPC备14003668号-2</p>
        </div>


		
	</div>

</body></html>