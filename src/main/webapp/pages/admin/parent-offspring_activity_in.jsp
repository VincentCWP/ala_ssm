
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

<link rel="stylesheet" href="resources/css/qzhd.css" type="text/css" />
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
    <!--<li><a href="ticketService.jsp">票务</a></li>-->
    <li ><a href="<%=basePath%>selecthd.action">活动展示</a></li>
    <li><a>关于我们</a></li>
  </ul>
</div>
		
		<div class="main">
                 <div style=" clear:both;"></div>
			<div class="qzhd">
            <div class="qzhd-back">阿拉亲子&gt;亲子活动</div>
				   <div class="qzhd-all">
                  <h2>您已选择：<span>共有<i>131</i>条活动信息</span></h2>
                  <div class="qzhd-all-d" ><p id="wen">区域：</p><a name="" class="all-p-a">全部</a>
                  <c:forEach items="${Hdaddres}" var="list">
									<a name="${list.hdaddress }">${list.hdaddress }</a>					                                    
                                    
                     </c:forEach>    
                  </div>
                  <div class="qzhd-all-d" ><p id="wen1">商家活动：</p><a name="" class="all-p-a">全部</a>
                  <c:forEach items="${hdtyp}" var="list1">
									<a name="${list1.hdtype }">${list1.hdtype }</a>					                                    
                     </c:forEach>   
                  </div>
                  <!-- <div  class="qzhd-all-d"><p id="wen2">时间：</p><a class="all-p-a">全部</a><a>今天</a><a>最近一周</a><a>网期活动</a></div>
  					</div> -->
                    
                    
                    <ul class="qzhd-main" >
                    <c:forEach items="${hd}" var="list2">
                    <c:choose >
                                    <c:when test="${list2.hdstate == 0}">
									<li><a  href="parent-offspring_activity.jsp"><img src=resources/images/${list2.hdpicture } width="305"  height="242"/></a>					                                    <div class="qzhd-li-t">
                                    <p>${list2.hdname }</p>
                                    <span><i ><img src="resources/images/time_19.jpg" /></i>${list2.hdtime }</span>
                                    <a><b>￥</b>${list2.hdprice }</a>
                                    </div>
                                    <div class="jinxin">进行中</div>
                                    </li>
                                    </c:when>
                                    
                                    </c:choose>
					</c:forEach>
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
               <!--  <li><a href="index.jsp">区域活动</a></li>-->
               <!-- <li><a href="ticketService.jsp">票务</a></li>-->
                <li><a href="<%=basePath%>selecthd.action">活动展示</a></li>
                <div style="clear:both;"></div>
            </ul>
            <p>	COPYRIGHT&nbsp;&nbsp;&nbsp;2015-2016&nbsp;&nbsp;&nbsp;版权所有：阿拉亲子&nbsp;浙IPC备14003668号-2</p>
        </div>


		
	</div>

</body>
<script type="text/javascript">
$(function(){
     var a="";
     var b="";
    
     
    	 $("#wen").nextAll().click(function(){
    		var a1= $(event.target).attr("name");
    		a=a1;
    		
    		/* var jsonObj = JSON.stringify({'Hdaddres':a});
    		var jsonObj1 = JSON.stringify({'hdtyp':b});
    		var jsonObj2 = JSON.stringify({'hdtime':c}); */
    		$.ajax({
				type:'post', 
				dataType:'json', 
				/* contentType :'application/json', */  //发送信息至服务器时内容编码类型。 
				data:{"Hdaddres":a,"hdtyp":b},
				
				url:'${pageContext.request.contextPath }/selectAjax.action',
				success:function(data){	
					$(".qzhd-main").html("");
						
						$.each(data.la,function(i,item){
							
							
							
							var $li=$("<li></li>")
							//$(".qzhd-main li a").setAttribute("class","hao1");
							//$(".qzhd-main li").addClass("margin","0px 36px");
							var a1=$("<a></a>");
							var a2=$("<a></a>");
							var b1=$("<b></b>");
							var i1=$("<i></i>");
							var span1=$("<span></span>");
							var div1=$("<div></div>");
							var div2=$("<div></div>");
							var p1=$("<p></p>");
							//$(".qzhd-main li div span i").setAttribute("class","hao2");
							var img1=document.createElement("img");
							img1.setAttribute("width","305");
							img1.setAttribute("height","242");
							img1.src="resources/images/"+item.hdpicture;
							var img2=document.createElement("img");
							img2.src="resources/images/time_19.jpg";
							a1.append(img1);
							$li.append(a1);
							p1.html(item.hdname);
							div1.append(p1);
							i1.append(img2);
							span1.append(i1);
							span1.html(item.hdtime);
							div1.append(span1);
							b1.html("￥");
							a2.append(b1);
							a2.html("￥"+item.hdprice);
							div1.append(a2);
							$li.append(div1);
							div2.html("进行中");
							$li.append(div2);
							$(".qzhd-main").append($li);
							//$img=$("<img src="+item.hdpicture+"  width="305"  height="242"/>");
							/* $(".qzhd-main").append($li); */
							/* $a=$("<a></a>");
							$a.append($img); */
							
							
						$(".qzhd-main li div").addClass("qzhd-li-t");
							$(".qzhd-main li div:last").addClass("jinxin");
						})
						var $div=$("<div></div>");
				$div.css("clear","both");
				$(".qzhd-main").append($div);

				},
				error:function(err){
					
				}
				
			});
    		 
    	 });
    	 $("#wen1").nextAll().click(function(){
     		var b1= $(event.target).attr("name");
     		b=b1;
     		/* var jsonObj = JSON.stringify({'Hdaddres':a});
     		var jsonObj1 = JSON.stringify({'hdtyp':b});
     		var jsonObj2 = JSON.stringify({'hdtime':c}); */
     		$.ajax({
 				type:'post', 
 				dataType:'json', 
 				/* contentType :'application/json', */  //发送信息至服务器时内容编码类型。 
 				data:{"Hdaddres":a,"hdtyp":b},
 				
 				url:'${pageContext.request.contextPath }/selectAjax.action',
 				
 					success:function(data){	
 						/* alert(data.la); */
 						$(".qzhd-main").html("");
 						
 						$.each(data.la,function(i,item){
 							
 							
 							
 							var $li=$("<li></li>")
 							//$(".qzhd-main li a").setAttribute("class","hao1");
 							//$(".qzhd-main li").addClass("margin","0px 36px");
 							var a1=$("<a></a>");
 							var a2=$("<a></a>");
 							var b1=$("<b></b>");
 							var i1=$("<i></i>");
 							var span1=$("<span></span>");
 							var div1=$("<div></div>");
 							var div2=$("<div></div>");
 							var p1=$("<p></p>");
 							//$(".qzhd-main li div span i").setAttribute("class","hao2");
 							var img1=document.createElement("img");
 							img1.setAttribute("width","305");
 							img1.setAttribute("height","242");
 							img1.src="resources/images/"+item.hdpicture;
 							var img2=document.createElement("img");
 							img2.src="resources/images/time_19.jpg";
 							a1.append(img1);
 							$li.append(a1);
 							p1.html(item.hdname);
 							div1.append(p1);
 							i1.append(img2);
 							span1.append(i1);
 							span1.html(item.hdtime);
 							div1.append(span1);
 							b1.html("￥");
 							a2.append(b1);
 							a2.html("￥:"+item.hdprice);
 							div1.append(a2);
 							$li.append(div1);
 							div2.html("进行中");
 							$li.append(div2);
 							$(".qzhd-main").append($li);
 							//$img=$("<img src="+item.hdpicture+"  width="305"  height="242"/>");
 							/* $(".qzhd-main").append($li); */
 							/* $a=$("<a></a>");
 							$a.append($img); */
 							
 							
 						$(".qzhd-main li div").addClass("qzhd-li-t");
 							$(".qzhd-main li div:last").addClass("jinxin");
 						})
 						var $div=$("<div></div>");
					$div.css("clear","both");
					$(".qzhd-main").append($div);
 						
 						
 					 /* for(var i in data.la){
						
						var $li=$("<li><a href="parent-offspring_activity.jsp"><img src=data.la[i].hdpicture  width="305"  height="242"/></a><div class="qzhd-li-t"><p>data.la[i].hdname </p><span><i><img src="resources/images/time_19.jpg" /></i>data.la[i].hdtime </span><a><b>￥</b>data.la[i].hdprice </a></div><div class="jinxin">进行中</div></li>")
							$(".qzhd-main").append($li);	
					}  */
 					
 				},
 				error:function(err){
 					
 				}
 				
 			});
     		 
     	 });
});
     
				/* $(event.target).attr("")
				$("#wen1").nextAll(selector)
				var jsonObj = JSON.stringify({'a1':a});
				$.ajax({
					type:'post', 
					dataType:'json', 
					contentType :'application/json',  //发送信息至服务器时内容编码类型。 
					data:jsonObj,
					url:'${pageContext.request.contextPath }/checkNameJson.action',
					success:function(userinfo){						
						$('#sp2').html("正确的消息："+userinfo.loves);
					},
					error:function(err){
						$('#sp2').html("错误的消息："+err.responseText);
					}
					
				});
				
			});
			
			
	 */
	</script>
	

</html>