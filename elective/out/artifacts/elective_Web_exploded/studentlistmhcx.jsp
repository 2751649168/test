<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>




<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>

		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 学生内容列表</strong> 
				<a href=""
					style="float:right; display:none;">添加字段</a>
			</div>
			<div class="padding border-bottom">
				<ul class="search" style="padding-left:10px;">
					<li> <a
						href="${pageContext.request.contextPath}/PageNum?pagenum=1" class="button border-main"
						> 返回学生信息管理页面</a></li>
				</ul>
			</div>
			<table class="table table-hover text-center" >
				<tr>
					<th width="70" style="text-align:left; padding-left:20px;">序号</th>
					<th width="7%">学生学号</th>
					<th width="7%">学生密码</th>			
					<th width="7%">姓名</th>
					<th width="5%">性别</th>
					<th width="5%">年龄</th>
					<th width="8%">总修学分</th>
					<th width="17%">地址</th>
					<th width="10%">电话</th>
					<th width="10%">E-mail</th>
					<th>操作</th>
				</tr>
				<volist name="list" id="vo"> 
				
				
				<c:forEach var="stu" items="${pages}" varStatus="status"  >
				<tr>
					<td style="text-align:left; padding-left:20px;"><input
						type="checkbox" name="id${stu.sid}" value="" />${status.count}</td>
					<td><input type="text" value="${stu.sid}" name="sid" id="sid" style="border: 0px;text-align: center;width: 100px;display: none;">${stu.sid}</td>
					<td><input type="text" value="${stu.skey}" name="skey" id="skey" style="border: 0px;text-align: center;width: 80px"></td>
					<td><input type="text" value="${stu.sname}" name="sname" id="sname" style="border: 0px;text-align: center;width: 50px"></td>
					<td><input type="text" value="${stu.ssex}" name="ssex" id="ssex" style="border: 0px;text-align: center;width: 50px"></td>
					<td><input type="text" value="${stu.sage}" name="sage" id="sage" style="border: 0px;text-align: center;width: 50px"></td>
					<td><input type="text" value="${stu.scredit}" name="scredit" id="scredit" style="border: 0px;text-align: center;width: 50px"></td>
					<td><input type="text" value="${stu.saddress}" name="saddress" id="saddress" style="border: 0px;text-align: center;width: 150px"></td>
					<td><input type="text" value="${stu.sphone}" name="sphone" id="sphone" style="border: 0px;text-align: center;width: 100px"></td>
					<td><input type="text" value="${stu.semail}" name="semail" id="semail" style="border: 0px;text-align: center;width: 160px"></td>
					<td>
					     <div class="button-group">
					        
							<a class="button border-main" href="javascript:updatestu(${status.index})"><span class="icon-edit"></span> 修改</a> 
							<a class="button border-red" href="deletestudent.action?sid=${stu.sid}" >
								<span class="icon-trash-o"></span> 删除</a>
						 </div>
				    </td>
				</tr>
				</c:forEach>
				

				
			</table>
		</div>
	
	<script type="text/javascript">



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
		
		//根据集合下表获取每个对象的值（修改）
		function updatestu(index){
		
		var sid=document.getElementsByName("sid")[index].value;
		var skey=document.getElementsByName("skey")[index].value;
		var sname=document.getElementsByName("sname")[index].value;
		var ssex=document.getElementsByName("ssex")[index].value;
		var sage=document.getElementsByName("sage")[index].value;
		var scredit=document.getElementsByName("scredit")[index].value;
		var saddress=document.getElementsByName("saddress")[index].value;
		var sphone=document.getElementsByName("sphone")[index].value;
		var semail=document.getElementsByName("semail")[index].value;
		window.location.href="${pageContext.request.contextPath}/madatestu?sid="+sid+"&skey="+skey+"&sname="+sname+"&ssex="+ssex+"&sage="+sage+"&scredit="+scredit+"&saddress="+saddress+"&sphone="+sphone+"&semail="+semail
		}
	</script>
</body>
</html>