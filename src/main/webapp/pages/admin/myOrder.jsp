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

<meta name="description" content="" />

<meta name="keywords" />

<link href="resources/css/wddd.css" rel="stylesheet" type="text/css" />

<link href="resources/css/base.css" rel="stylesheet" type="text/css" />
</head>
<style type="text/css">


.demo-right{width:80%; float:right; background:#fff;}
.tb-title{ height:50px;}
.tb-title1{ margin:0 auto;border-collapse:collapse; background:#FFF;}
.tb-title1 td{border:1px solid #ccc; }
.tb-title2{  line-height:40px; text-indent:20px; border-top:1px solid #ccc; border-left:1px solid #ccc;border-right:1px solid #ccc;width:100%; background:#f4f4f4; box-sizing:border-box;}
.tb-title2 span{ float:right; position:absolute; right:10px; position:relative;}
.demo-right table{ float:right;  }
.demo table tr td{text-align:center; padding:20px 0;}
.tb-min{width:780px; margin:0 auto; margin-top:10px;}
</style>
<body style="background:#f9f9f9;">

<div class="logBox">
		<div class="login">
			<div class="siderNav">
				<ul class="topmenu" id="jq_topmenu">
                <li class="first"><a href="<%=basePath%>selectindex.action">首页</a>|<a>关于我们</a></li>
              
				</ul>
			</div>
		</div>
</div>
<div class="main">
    <div class="search-box">
	 	<form class="search-form"  id="search-form">
	 		<input type="text" class="search-text br" id="search_input" autocomplete="off" placeholder="搜索"/>
	 		<input type="submit" class="search-button br" value=""/>
	 	</form>
        <div class="c"></div>
        </div>
<div class="demo">
		
		<div class="demo-left">
        <div class="demo-left-top">
        <p><img src="resources/images/dingdan_03.jpg" /></p>
        <h3>admin</h3>
        </div>
        	<ul>
            <li class="title2"><a href="pages/admin/orderInformation.jsp">我的资料</a></li>
            <li class="title2"><a href="pages/admin/myOrder.jsp">我的订单</a></li>
            <li class="title2"><a href="这里可插入一个留言板.jsp">意见反馈</a></li>		
            </ul>
        	</div>
        <div class="demo-right">
        <div style="width:780px; margin:0 auto; padding-top:10px;">
            <table width="100%" border="0"  class="tb-title" style=" border-collapse:collapse;" >
                  <tr style=" background:#fef7ea; border:1px solid #fed89a;">
                    <th scope="col" width="40%">主题</th>
                    <th scope="col" width="17%">订购信息</th>
                    <th scope="col" width="8%">数量</th>
                    <th scope="col" width="20%" >实付款（元）</th>
                    <th scope="col" width="15%">交易状态</th>
                  </tr>
            </table>
        </div>
        <div style="clear:both;"></div>
        <div  class="tb-min" >
         <p class="tb-title2">2015/7/7<span>订单号：14454545645989</span></p>
       
        	 <table width="100%" border="1"class="tb-title1" >
           
              <tr >
                <td class="ddc" width="40%"><a>新梦想少儿足球免费试踢啦！</a></td>
                <td class="ddc" width="17%" ><p>成人，1人，￥80/人</p><p>儿童，1人，￥40/人</p></td>
                <td class="ddc" width="8%" >2</td>
                <td class="ddc" width="20%" >100.00</td>
                <td class="ddc" width="15%"><p></p><a href="ordetrDetails.jsp">交易完成,查看详情</a></td>
              </tr>
              <tr >
                <td class="ddc" width="40%"><a>开心农场体验啦！</a></td>
                <td class="ddc" width="17%" ><p>成人，1人，￥450/人</p><p>儿童，1人，￥250/人</p></td>
                <td class="ddc" width="8%" >2</td>
                <td class="ddc" width="20%" >670.00</td>
                <td class="ddc" width="15%"><p></p><a href="pages/admin/ordetrDetails.jsp">交易完成,查看详情</a></td>
              </tr>
			</table>
        </div>
        <div style="clear:both;"></div>
         <div  class="tb-min" >
         <p class="tb-title2">2015/7/7<span>订单号：1465646654989</span></p>
       
        	 <table width="100%" border="1"class="tb-title1" >
           
              <tr >
                <td class="ddc" width="40%"><a>漫画展开始啦！</a></td>
                <td class="ddc" width="17%" ><p>成人，1人，￥200/人</p><p>儿童，1人，￥80/人</p></td>
                <td class="ddc" width="8%" >2</td>
                <td class="ddc" width="20%" >300.00</td>
                <td class="ddc" width="15%"><p></p><a href="pages/admin/ordetrDetails.jsp">交易完成,查看详情</a></td>
              </tr>
			</table>
        </div>
        <div style="clear:both;"></div>
        <div  class="tb-min" >
         <p class="tb-title2">2015/7/7<span>订单号：1465646654989</span></p>
       
        	 <table width="100%" border="1"class="tb-title1" >
           
              <tr >
                <td class="ddc" width="40%"><a>亲子拔河啦！</a></td>
                <td class="ddc" width="17%" ><p>成人，1人，￥55/人</p><p>儿童，1人，￥20/人</p></td>
                <td class="ddc" width="8%" >2</td>
                <td class="ddc" width="20%" >60.00</td>
                <td class="ddc" width="15%"><p></p><a href="pages/admin/ordetrDetails.jsp">交易完成,查看详情</a></td>
              </tr>
			</table>
        </div>
      <div style="clear:both;"></div>
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
            <div style="clear:both;"></div>
        </div>
     
</div>

</div>


<div class="footer-b">
        	<ul>
            	<li><a href="<%=basePath%>selectindex.action">首页</a></li>
                <li><a href="<%=basePath%>selectHdtype.action">亲子活动</a></li>
             <li><a href="<%=basePath%>selectly.action">亲子旅游</a></li>
                <!-- <li><a href="index.jsp">区域活动</a></li>
                <li><a href="pages/admin/ticketService.jsp">票务</a></li> -->
                <li><a href="<%=basePath%>selecthd.action">活动展示</a></li>
                <div style="clear:both;"></div>
            </ul>
            <p>	COPYRIGHT&nbsp;&nbsp;&nbsp;2015-2016&nbsp;&nbsp;&nbsp;版权所有：阿拉亲子&nbsp;浙IPC备14003668号-2</p>
        </div>


</body>

</html>

