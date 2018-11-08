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

<link rel="stylesheet" href="resources/css/style.css" type="text/css" />
<script type="text/javascript" src="resources/js/common.min.js"></script>
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
        <c:when test="${user.username!=null }"><a href="pages/admin/orderInformation.jsp">${user.username }</a>
   <a href="<%=basePath%>sessionInvalidate.action">退出</a>
        </c:when>
    <c:otherwise>
    <a href="pages/admin/login.jsp">登录</a>
    <a href="pages/admin/register.jsp" class="top-line-a-on">注册</a>
    </c:otherwise>
    </c:choose>
    <form class="search-form"  id="search-form">
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
   <li class="wbg"><a href="<%=basePath%>selectindex.action">首页</a></li>
    <li><a href="<%=basePath%>selectHdtype.action">亲子活动</a></li>
    <li><a href="<%=basePath%>selectly.action">亲子旅游</a></li>
   <!-- <li><a href="ticketService.jsp">票务</a></li>-->
    <li ><a href="<%=basePath%>selecthd.action">活动展示</a></li>
    <li><a>关于我们</a></li>
  </ul>
</div>
<!--heder end-->
		
		<div class="banner">			
			<div class="bd">
				<ul class="fixed">
				<li style=" background:url(resources/images/index_02.jpg) 50% 0 no-repeat"><a href="cn/#"></a></li>
				<li style=" background:url(resources/images/lunbo.jpg) 50% 0 no-repeat"><a href="cn/#"></a></li>
				<li style=" background:url(resources/images/qingzida.jpg) 50% 0 no-repeat"><a href="cn/#"></a></li>
				</ul>
			</div>
			<div class="hd"><ul class="fixed"><li class="on"></li><li class=""></li><li class=""></li></ul></div>
		</div>
		<script type="text/javascript">
			jQuery(".banner").slide({ titCell:".hd ul", mainCell:".bd ul", effect:"left", autoPage:"<li></li>", autoPlay:true, effect:"fold"})
		</script>
		<!--banner end-->
		
		<div class="main">
        <div class="container-tit">
                	<div class="container-tit-p1"><img src="resources/images/index_05.jpg" /><p><a href="<%=basePath%>selectHdtype.action">亲子活动</a></p></div>
                  <div class="container-tit-p2"><img src="resources/images/index_05.jpg" style="padding-left:100px;"/><p><a href="<%=basePath%>selectly.action">亲子旅游</a></p></div>
                  <div class="container-tit-p3"><img src="resources/images/index_05.jpg" /><p><a href="<%=basePath%>selecthd.action">活动展示</a></p></div>
                </div>
                 <div style=" clear:both;"></div>
			 <div class="qzhd">
				    <div class="title">
                    <p><i>A</i><b>亲子活动</b><span>activities</span></p>
                    <span class="more">more</span>
                   
                    
                    
                    <ul class="qzhd-main" >
                    <c:forEach items="${hd}" var="list">
                                    <c:choose >
                                    <c:when test="${list.hdstate == 1}">
									<li><a href=""><img src=${list.hdpicture } width="305"  height="242"/></a>					                                    <div class="qzhd-li-t">
                                    <p>${list.hdname }</p>
                                    <span><i><img src="resources/images/time_19.jpg" /></i>${list.hdtime }</span>
                                    <a><b>￥</b>${list.hdprice }</a>
                                    </div>
                                    <div class="guanbi">已关闭</div>
                                    <div class="black"></div>
                                    </c:when>
                                    <c:when test="${list.hdstate == 0}">
                                   <li style="margin:0px 10px;"><a href="<%=basePath%>/toparent-offspring_activity.action?hdname=${list.hdname }&hdtime=${list.hdtime }&hdprice=${list.hdprice }&hdaddress=${list.hdaddress }"><img src="resources/images/"${list.hdpicture } width="305"  height="242"/></a>					                                    <div class="qzhd-li-t">
                                    <p>${list.hdname }</p>
                                    <span><i><img src="resources/images/time_19.jpg" /></i>${list.hdtime }</span>
                                    <a><b>￥</b>${list.hdprice }</a>
                                    </div>
                                     <div class="jinxin">进行中</div>
                                    </c:when>
                                    </c:choose>
                                    </li>
                                    </c:forEach>
									
							<div style="clear:both;"></div>		
					</ul>
            </div>
        
            <div class="qzly">
            	<div class="title">
                    <p><i>T</i><b>亲子旅游</b><span>tourism</span></p>
                    <span class="more">more</span>
                    </div>
                    <div class="qzly-main">
                    	<div class="content2-main">
			<div class="hd">
				<ul>
                <li class="on">全部</li>
                <c:forEach items="${lytype}" var="list1">
                <li>${list1.lytype }</li>
                </c:forEach>
                </ul>
			</div>
			<div class="bd">
				<ul>
				<c:forEach items="${lytype}" var="list1">
					<li><img src=${list1.lypicture } width="205"  height="138"/></li>
                </c:forEach>
				</ul>
				
               
               
			</div>
		</div>
        
        <div class="sideMenu" style="margin:0 auto">
        	<img src="resources/images/qzly_03.jpg" />
			<h3><img src="resources/images/1_03.jpg" />上海科技馆</h3>
			<ul>
				<img src="resources/images/1-p_07.jpg" width="125" height="79" />
             <div class="sideMenu-t">
             <b>常州恐龙园</b>
             <span>中华恐龙园享有"东恐龙园享有"东方侏恐龙园享有"东方侏恐龙园享有"东方侏罗纪"中华恐龙园享有"东方侏中华恐龙园享有"东方侏
美誉</span>
             </div>
			</ul>

			<h3><img src="resources/images/2_07.jpg" />幻灯片/焦点图</h3>

			<ul>
				<img src="resources/images/1-p_07.jpg" width="125" height="79" />
             <div class="sideMenu-t">
             <b>常州恐龙园</b>
             <span>中华恐龙园享有"东恐龙园享有"东方侏恐龙园享有"东方侏恐龙园享有"东方侏罗纪"中华恐龙园享有"东方侏中华恐龙园享有"东方侏
美誉</span>
             </div>
			</ul>
			<h3><img src="resources/images/1_06.jpg" />南京海底世界</h3>
			<ul>
				<img src="resources/images/1-p_07.jpg" width="125" height="79" />
             <div class="sideMenu-t">
             <b>常州恐龙园</b>
             <span>中华恐龙园享有"东恐龙园享有"东方侏恐龙园享有"东方侏恐龙园享有"东方侏罗纪"中华恐龙园享有"东方侏中华恐龙园享有"东方侏
美誉</span>
             </div>
			</ul>
            <h3><img src="resources/images/1_09.jpg"/>上海动物园</h3>
			<ul>
				<img src="resources/images/1-p_07.jpg" width="125" height="79" />
             <div class="sideMenu-t">
             <b>常州恐龙园</b>
             <span>中华恐龙园享有"东恐龙园享有"东方侏恐龙园享有"东方侏恐龙园享有"东方侏罗纪"中华恐龙园享有"东方侏中华恐龙园享有"东方侏
美誉</span>
             </div>
			</ul>
            <h3><img src="resources/images/1_11.jpg" />常州动物园</h3>
			<ul>
				<img src="resources/images/1-p_07.jpg" width="125" height="79" />
             <div class="sideMenu-t">
             <b>常州恐龙园</b>
             <span>中华恐龙园享有"东恐龙园享有"东方侏恐龙园享有"东方侏恐龙园享有"东方侏罗纪"中华恐龙园享有"东方侏中华恐龙园享有"东方侏
美誉</span>
             </div>
			</ul>
		</div>
        
        <div style="clear:both;"></div>
                    </div>
            </div>
            
            <div class="hdzs">
            	<div class="title">
                    <p><i>S</i><b>活动展示</b><span>show</span></p>
                    <span class="more">more</span>
                    </div>
                 	<ul class="hdzs-main" >
                 	<c:forEach items="${hd}" var="list">
									<li><a href="pages/admin/parent-offspring_activity.jsp"><img src=${list.hdpicture } width="236" height="185"/></a>					                                    <span>欢乐斗牛</span>
                                    </li>
                                    
                     </c:forEach>               
							<div style="clear:both;"></div>		
					</ul>
            </div>
		</div> 
		<!--main end-->
		
	<div class="footer">
        <div class="footer-t">
        		<div class="footer-t-l">
                    <div class="title">
                        <p><i>A</i><b>亲子活动</b><span>activities</span></p>
                        <span class="more">more</span>
                     </div>
                     <p>由带队总指导员宣布 “成长体验营”成立并正式开始，任命各级训导员并进行授旗仪式，集体宣誓，承诺，辅导员、学员代表发言；团队建设：夏令营纪律学习、设计队名旗帜，建立团队归属感，团队荣誉感。认识小伙伴扩大社交圈...</p>
                 </div>
                    <div class="footer-t-r"><img src="resources/images/demo_07.jpg" width="95" height="95" /><p >扫一扫，更多精彩</p></div>			
            <div style="clear:both;"></div>
        </div>
	</div><!--footer end-->
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
<script id="jsID" type="text/javascript">
		 var ary = location.href.split("&");
		jQuery(".slideBox").slide( { mainCell:".bd ul", effect:ary[1],autoPlay:ary[2],trigger:ary[3],easing:ary[4],delayTime:ary[5],mouseOverStop:ary[6],pnLoop:ary[7] });
		</script>
       

</body></html>