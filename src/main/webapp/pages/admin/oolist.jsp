<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="resources/css/pintuer.css">
<link rel="stylesheet" href="resources/css/admin.css">
<script src="resources/frontjs/js/jquery.js"></script>
<script src="resources/frontjs/js/pintuer.js"></script>
</head>
<body>
	<form method="post" action="" id="listform">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 内容列表</strong> <a href=""
					style="float: right; display: none;">添加字段</a>
			</div>
			<div class="padding border-bottom">
				<ul class="search" style="padding-left: 10px;">
					<li><a class="button border-main icon-plus-square-o"
						href="pages/admin/ooadd.jsp"> 添加内容</a></li>
					<li>搜索：</li>
			
					<li><input type="text" placeholder="请输入搜索关键字" name="keywords"
						class="input"
						style="width: 250px; line-height: 17px; display: inline-block" />
						<a href="javascript:void(0)"
						class="button border-main icon-search" onclick="changesearch()">
							搜索</a></li>
				</ul>
			</div>
			<table class="table table-hover text-center">
				<tr>
					<th width="100" style="text-align: left; padding-left: 20px;">ID</th>

					<th>订单名</th>
					<th>订购信息</th>
					<th>目的地</th>
					<th>实付款（元）</th>
					<th>交易状态</th>
					<th>出行方式</th>
					<th>联系人姓名</th>
					<th>联系人电话</th>
					<th>联系人备注</th>
					
					<th width="200">操作</th>
				</tr>
				<volist name="list" id="vo">
				 <c:forEach items="${list }" var="li">
					<tr>
						<td style="text-align:left; padding-left:20px;"><input type="checkbox" name="id[]" value="" />${li.id }</td>
						<td>${li.oname }</td>
						<td>${li.omessage }</td>
						<td>${li.odizhi }</td>
						<td>${li.omoney }</td>
						<td>${li.ostate }</td>
						<td>${li.ochuxing }</td>
						<td>${li.uname }</td>
						<td>${li.uphone }</td>
						<td>${li.ut }</td>
						<td><div class="button-group">
						    <a class="button border-main" href="<%=basePath%>/getOrder.action?id=${li.id }" id="change"><span class="icon-edit"></span> 修改</a> 
						    <a class="button border-red" href="<%=basePath%>/deleteoo.action?id=${li.id }" onclick="return del()" id="delete"><span class="icon-trash-o"></span> 删除</a> </div></td>
					</tr>
					<input type="hidden" value="${li.id }" id="pid">
				</c:forEach>
			</table>
		</div>
	</form>
	<script type="text/javascript">
		//搜索
		function changesearch() {

		}
		
		$(document).ready(function(){
			var id= $("#pid").val();
			$("#change").click(function(){
				window.location.href="getOrder/${li.id}="+id;
			})
		}); 
		
		
		
		//单个删除
		$(document).ready(function(){
			var id= $("#pid").val();
			$("#delete").click(function(){
				alert("确定删除吗？");
				window.location.href="deleteoo/${li.id}"+id; 
			})
		});

		//全选
		$("#checkall").click(function() {
			$("input[name='id[]']").each(function() {
				if (this.checked) {
					this.checked = false;
				} else {
					this.checked = true;
				}
			});
		})

		//批量删除
		function DelSelect() {
			var Checkbox = false;
			$("input[name='id[]']").each(function() {
				if (this.checked == true) {
					Checkbox = true;
				}
			});
			if (Checkbox) {
				var t = confirm("您确认要删除选中的内容吗？");
				if (t == false)
					return false;
				$("#listform").submit();
			} else {
				alert("请选择您要删除的内容!");
				return false;
			}
		}

		//批量排序
		function sorts() {
			var Checkbox = false;
			$("input[name='id[]']").each(function() {
				if (this.checked == true) {
					Checkbox = true;
				}
			});
			if (Checkbox) {

				$("#listform").submit();
			} else {
				alert("请选择要操作的内容!");
				return false;
			}
		}

		//批量首页显示
		function changeishome(o) {
			var Checkbox = false;
			$("input[name='id[]']").each(function() {
				if (this.checked == true) {
					Checkbox = true;
				}
			});
			if (Checkbox) {

				$("#listform").submit();
			} else {
				alert("请选择要操作的内容!");

				return false;
			}
		}

		//批量推荐
		function changeisvouch(o) {
			var Checkbox = false;
			$("input[name='id[]']").each(function() {
				if (this.checked == true) {
					Checkbox = true;
				}
			});
			if (Checkbox) {

				$("#listform").submit();
			} else {
				alert("请选择要操作的内容!");

				return false;
			}
		}

		//批量置顶
		function changeistop(o) {
			var Checkbox = false;
			$("input[name='id[]']").each(function() {
				if (this.checked == true) {
					Checkbox = true;
				}
			});
			if (Checkbox) {

				$("#listform").submit();
			} else {
				alert("请选择要操作的内容!");

				return false;
			}
		}

		//批量移动
		function changecate(o) {
			var Checkbox = false;
			$("input[name='id[]']").each(function() {
				if (this.checked == true) {
					Checkbox = true;
				}
			});
			if (Checkbox) {

				$("#listform").submit();
			} else {
				alert("请选择要操作的内容!");

				return false;
			}
		}

		//批量复制
		function changecopy(o) {
			var Checkbox = false;
			$("input[name='id[]']").each(function() {
				if (this.checked == true) {
					Checkbox = true;
				}
			});
			if (Checkbox) {
				var i = 0;
				$("input[name='id[]']").each(function() {
					if (this.checked == true) {
						i++;
					}
				});
				if (i > 1) {
					alert("只能选择一条信息!");
					$(o).find("option:first").prop("selected", "selected");
				} else {

					$("#listform").submit();
				}
			} else {
				alert("请选择要复制的内容!");
				$(o).find("option:first").prop("selected", "selected");
				return false;
			}
		}
	</script>
</body>
</html>