<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

<!-- 引入分页插件 -->
	<link rel="stylesheet" type="text/css" href="resources/css/jquery.dataTables.min.css">
	<script type="text/javascript" src="resources/js/jquery.js"></script>
	<script type="text/javascript" src="resources/js/jquery.dataTables.min.js"></script>
</head>
<body>
<form method="post" action="<%=basePath%>/getPcName.action" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="pages/admin/lyadd.jsp"> 添加内容</a> </li>
        <li>搜索：</li>
       
        <li>
          <input type="text" placeholder="请输入搜索关键字" name="lyname" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <input  type="submit" value="搜索" class="button border-main icon-search"/>
          
          </li>
      </ul>
    </div>
    <table class="table table-hover text-center"  class="tablelist" id="example">
    	<thead>
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">ID</th>
        
        <th>图片</th>
        <th>旅游项目名称</th>
        <th>出游时长</th>
        <th>旅游目的地</th>
        <th>成人单价(元)</th>
        <th>儿童单价(元)</th>
        <th>最低年龄限制</th>
        
        <th width="310">操作</th>
      </tr>
      	</thead>
      	<tbody>
      <volist name="list" id="vo">
      <c:forEach items="${list }" var="li">
					<tr>
						<td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" />${li.lyid }</td>
						<td><img  alt="头像" src="resources/images/${li.lypicture }" width="50px" height="50px" ></td>
						<td>${li.lyname }</td>
						<td>${li.lytype }</td>
						<td>${li.lyaddress }</td>
						<td>${li.lypriceA }</td>
						<td>${li.lypriceB }</td>
						<td>${li.lyage }</td>
						
						<td><div class="button-group">
						    <a class="button border-main" href="<%=basePath%>/getPcly.action?lyid=${li.lyid }" id="change"><span class="icon-edit"></span> 修改</a> 
						    <a class="button border-red" href="<%=basePath%>/deletepc.action?lyid=${li.lyid }" onclick="return del()" id="delete"><span class="icon-trash-o"></span> 删除</a> </div></td>
					</tr>
        <input type="hidden" value="${li.lyid }" id="pid">
				</c:forEach>
         	</tbody>
      
    </table>
  </div>
</form>



<script type="text/javascript">
	$(document).ready(function(){
		$("#example").dataTable({
			 "bProcessing" : true, //DataTables载入数据时，是否显示‘进度’提示
			  "aLengthMenu" : [5, 10, 15], //更改显示记录数选项 
			 "sPaginationType" : "full_numbers", //详细分页组，可以支持直接跳转到某页
			 "bAutoWidth" : true, //是否自适应宽度
			 //"bJQueryUI" : true,
			 "oLanguage": { //国际化配置  
	                 "sProcessing" : "正在获取数据，请稍后...",    
	                 "sLengthMenu" : "显示 _MENU_ 条",     
	                "sZeroRecords" : "没有您要搜索的内容",    
	                "sInfo" : "从 _START_ 到  _END_ 条记录 总记录数为 _TOTAL_ 条",    
	                "sInfoEmpty" : "记录数为0",    
	                "sInfoFiltered" : "(全部记录数 _MAX_ 条)",    
	                "sInfoPostFix" : "",    
	                 "sSearch" : "搜索",     
	                 "sUrl" : "",    
	                "oPaginate": {    
	                    "sFirst" : "第一页",    
	                    "sPrevious" : "上一页",    
	                    "sNext" : "下一页",    
	                    "sLast" : "最后一页"    
	                }  
	            },  
	    });
	});
</script>
<script type="text/javascript">

//搜索
function changesearch(){	
		
}


$(document).ready(function(){
	var id= $("#pid").val();
	$("#change").click(function(){
		window.location.href="getPcly/${li.lyid}="+id;
	})
}); 

//单个删除
function del(id,mid,iscid){
	if(confirm("您确定要删除吗?")){
		
	}
}

//全选
$("#checkall").click(function(){ 
  $("input[name='id[]']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})

//批量删除
function DelSelect(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false;		
		$("#listform").submit();		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}

//批量排序
function sorts(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		return false;
	}
}


//批量首页显示
function changeishome(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}

//批量推荐
function changeisvouch(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");	
		
		return false;
	}
}

//批量置顶
function changeistop(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}


//批量移动
function changecate(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		
		return false;
	}
}

//批量复制
function changecopy(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		var i = 0;
	    $("input[name='id[]']").each(function(){
	  		if (this.checked==true) {
				i++;
			}		
	    });
		if(i>1){ 
	    	alert("只能选择一条信息!");
			$(o).find("option:first").prop("selected","selected");
		}else{
		
			$("#listform").submit();		
		}	
	}
	else{
		alert("请选择要复制的内容!");
		$(o).find("option:first").prop("selected","selected");
		return false;
	}
}

</script>
</body>
</html>