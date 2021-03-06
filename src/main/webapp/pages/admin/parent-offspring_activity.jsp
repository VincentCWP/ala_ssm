
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

<link rel="stylesheet" href="resources/css/qzhd-1.css" type="text/css" />

<script type="text/javascript" src="resources/js/jquery1.42.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="resources/js/public.js"></script>
<script type="text/javascript" src="resources/js/jquery.Spinner.js"></script>
</head>

<body>
	
	<div id="web">	
		
<div class="topall">
	<div class="top-line">
    <div class="top-line-box">
    <c:choose>
        <c:when test="${user.username!=null }">您好，${user.username }
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
   <li ><a href="<%=basePath%>selectindex.action">首页</a></li>
    <li class="wbg"><a href="<%=basePath%>selectHdtype.action">亲子活动</a></li>
   <li><a href="<%=basePath%>selectly.action">亲子旅游</a></li> 
<!--    <li><a href="ticketService.jsp">票务</a></li>-->
    <li ><a href="<%=basePath%>selecthd.action">活动展示</a></li>
    <li><a>关于我们</a></li>
  </ul>
</div>
		<div class="main">
			
            <div class="main-top" >
            <h2>${hdname }</h2>
            <div id="demo1" class="picBtnTop">
                <div class="hd">
                    <ul>
                        <li><img src="resources/images/slide_03.jpg" /></li>
                        <li><img src="resources/images/亲子活动展示照片/亲子活动10.jpg" /></li>
                        <li><img src="resources/images/亲子活动展示照片/景区g.jpg" /></li>
                    </ul>
                </div>
                <div class="bd">
                    <ul>
                        <li>
                            
                            <div class="pic"><a href="pages/admin/parent-offspring_activity_in.jsp"><img src="resources/images/slide_03.jpg" /></a></div>
                            
                        </li>
                        <li>
                            
                            <div class="pic"><a href="pages/admin/parent-offspring_activity_in.jsp"><img src="resources/images/亲子活动展示照片/亲子活动10.jpg" /></a></div>
                            
                        </li>
                        <li>
                            
                            <div class="pic"><a href="pages/admin/parent-offspring_activity_in.jsp"><img src="resources/images/亲子活动展示照片/景区g.jpg" /></a></div>
                            
                        </li>
                    </ul>
                </div>
		</div>
		<div class="table-right">
        	<h1 id="total"><b>￥</b >${hdprice*2 }</h1>
            <span>推荐理由：魔法奇园是全国第一个沉浸式体感交互主题乐园，是全国最高端的高科技乐园，超越你的想象</span>
            <span><img src="resources/images/hd-n_06.jpg" />${hdaddress}<i style="font-style:normal; padding-left:50px;"><img src="resources/images/hd-n_03_03.jpg" style="padding:5px 5px 0px 0px;" />自驾</i></span>
            <div class="table-right-box">
            <div class="table-right-b-t1">
            	<p>出行日期：</p>
                <span class="table-span">${hdtime }（一日游）</span>
                <span>${hdtime }（一日游）</span>
                <div style="clear:both;"></div>
            </div>
            <div style="clear:both;"></div>
            <div class="table-right-b-t2">
            	<p>出行人数：</p>
               	<div class="table-right-b-t2-box">
                
				<div class="table-right-b-t2-m">
                <div id="d1" class="Spinner"></div>
                <b>成人</b><i>￥${hdprice }</i>
                <div style="clear:both;"></div>
                </div>
             
                
                <div class="table-right-b-t2-m">
                <div id="d3" class="Spinner"></div>
                <b>儿童</b><i>￥${hdprice }</i>
                <div style="clear:both;"></div>
                </div>
                <div style="clear:both;"></div>
                </div>
            </div>
            </div>
          <form action="<%=basePath%>tosubmitOrder.action" method="post">
          <input id="num1" type="hidden" name="num1" value="5">
          <input id="num2" type="hidden" name="num2" value="5">
          <input id="hdaddress" type="hidden" name="hdaddress" value="${hdaddress }">
          <input id="hdname" type="hidden" name="hdname" value="${hdname }">
          <input id="hdprice" type="hidden" name="hdprice" value="${hdprice }">
          <input id="tot" type="hidden" name="tot" value="">
          <input  class="goumai" type="submit" value="立刻购买" />
            <!-- <input  href="pages/admin/submitOrder.jsp" class="goumai">立刻购买</a> -->
           </form>
        </div>
            </div>
            
            
            
            <div class="qzly">
            	
                    <div class="qzly-main">
                    	<div class="content2-main">
			<div class="hd">
				<ul>
                <li>活动介绍</li>
                <li>收费标准</li>
                <li>交通路线</li>
                </ul>
			</div>
            <div class="content2-main-r">
            <img src="resources/images/hd-n_03.jpg" width="100%"/>
            	<p>
                <img src="resources/images/亲子活动展示照片/亲子活动7.jpg"/>
                <span>博物馆乐园</span>
                </p>
                <p>
                <img src="resources/images/亲子活动展示照片/亲子活动5.jpg"/>
                <span>悦动农村乐园</span>
                </p>
                <p>
                <img src="resources/images/亲子活动展示照片/活动展示18.jpg"/>
                <span>放飞梦想乐园</span>
                </p>
            </div>
			<div class="bd">
				
               
				
				<ul>
					<p>宁波西溪水上世界是宁波最大、最先进、最安全、水上游乐项目最多的水上世界。园内有惊险刺激的巨兽碗，儿童池，游泳池，皮筏滑梯，高速滑梯，环型漂流河，合家欢喜池，三彩竞赛滑梯，具保健功能的水疗五星池，具亚热带风情的休息亭及宁波地区最大海浪池。<br />

　　为了让游客真正体验顶级的水上世界，水上世界为广大市民带来了众多的惊喜体验，小朋友可以和爸爸妈妈同时体验水的乐趣，增进亲情，几位好友可以同时体验水的激情，增进友情，水上世界不仅是一个好玩的场所，更是一个亲情友情的释放地。水上世界为了让广大市民在盛夏有不同的水体验，在整体设计上下了一番苦心，每个设备带给每位游客的体验感觉是截然不同，有的体验落差带给游客随浪花飞流直下的感受，有的带给游客随着水卷入万丈漩涡的感受，造浪池的9种不同海浪会带给您不一样的感受，让游客仿佛置身于大海之中，最长的漂流河给游
客带来舒适享受的浪漫之旅，最大的宝贝水城给小朋友一个不一样的童话水世界。</p>
<span><img src="resources/images/hd-n_07.jpg" /><span>
				</ul>
                <ul>
					<p>宁波西溪水上世界是宁波最大、最先进、最安全、水上游乐项目最多的水上世界。园内有惊险刺激的巨兽碗，儿童池，游泳池，皮筏滑梯，高速滑梯，环型漂流河，合家欢喜池，三彩竞赛滑梯，具保健功能的水疗五星池，具亚热带风情的休息亭及宁波地区最大海浪池。<br />

　　为了让游客真正体验顶级的水上世界，水上世界为广大市民带来了众多的惊喜体验，小朋友可以和爸爸妈妈同时体验水的乐趣，增进亲情，几位好友可以同时体验水的激情，增进友情，水上世界不仅是一个好玩的场所，更是一个亲情友情的释放地。水上世界为了让广大市民在盛夏有不同的水体验，在整体设计上下了一番苦心，每个设备河给游
客带来舒适享受的浪漫之旅，最大的宝贝水城给小朋友一个不一样的童话水世界。</p>
<span><img src="resources/images/hd-n_07.jpg" /><span>
				</ul>
                <ul>
					<p>宁波西溪水上世界是宁波最大、最先进、最安全、水上游乐项目最多的水上世界。园内有惊险刺激的巨兽碗，儿童池，游泳池，皮筏滑梯，高速滑梯，环型漂流河，合家欢喜池，三彩竞赛滑梯，具保健功能的水疗五星池，具亚热带风情的休息亭及宁波地区最大海浪池。<br />

　
客带来舒适享受的浪漫之旅，最大的宝贝水城给小朋友一个不一样的童话水世界。</p>
<span><img src="resources/images/hd-n_07.jpg" /><span>
				</ul>
                
			</div>
		</div>
       <div style="clear:both;"></div>
                    </div>
            </div>
            
            
            
		</div>
		<!--main end-->
		
	<!--footer end-->
<div class="footer-b">
        	<ul>
            	<li><a href="<%=basePath%>selectindex.action">首页</a></li>
                <li><a href="<%=basePath%>selectHdtype.action">亲子活动</a></li>
                <li><a href="<%=basePath%>selectly.action">亲子旅游</a></li>
                <!-- <li><a href="pages/admin/index.jsp">区域活动</a></li> -->
                <!--<li><a href="pw.jsp">票务</a></li>-->
                <li><a href="<%=basePath%>selecthd.action">活动展示</a></li>
                <div style="clear:both;"></div>
            </ul>
            <p>	COPYRIGHT&nbsp;&nbsp;&nbsp;2015-2016&nbsp;&nbsp;&nbsp;版权所有：阿拉亲子&nbsp;浙IPC备14003668号-2</p>
        </div>

		
	</div>
<script type="text/javascript">

jQuery(".content2-main").slide({trigger:"click"});

</script>
<script type="text/javascript">

jQuery("#demo1").slide({ mainCell:".bd ul",effect:"top",autoPlay:true,triggerTime:0 });

</script>
<script type="text/javascript">
$(function(){
	var num1=1;
	var num2=1;
	$("#d").Spinner();
	$("#d1").Spinner();
	$("#d2").Spinner();
	$("#d3").Spinner();
	$("#d1 a[class=DisDe]").click(function(){
		num1=num1-1;
		
		if(num1<1){
			num1=1;
			
		}
		$("#num1").val(num1);
		var total=num1*${hdprice }+num2*${hdprice }
		$("#total").html(total);
		$("#tot").val(total);
		
	});
	$("#d1 a[class=Increase]").click(function(){
		
		num1=num1+1;
		
		$("#num1").val(num1);
		var total=num1*${hdprice }+num2*${hdprice }
		
		$("#total").html(total);
		$("#tot").val(total);
		
		
	});
	$("#d3 a[class=DisDe]").click(function(){
		num2=num2-1;
		
		if(num2<1){
			num2=1;
			
		}
		$("#num2").val(num2);
		var total=num1*${hdprice }+num2*${hdprice }
		$("#total").html(total);
		$("#tot").val(total);
	});
	$("#d3 a[class=Increase]").click(function(){
		
		num2=num2+1;
		
		$("#num2").val(num2);
		var total=num1*${hdprice }+num2*${hdprice }
		$("#total").html(total);
		$("#tot").val(total);
		
		
	});
	
});

</script>
</body></html>