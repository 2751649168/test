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
	<form method="post" action="" id="listform">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 老师内容列表</strong> 
				<a href=""
					style="float:right; display:none;">添加字段</a>
			</div>
			<div class="padding border-bottom">
				<ul class="search" style="padding-left:10px;">
					<li><input type="text" placeholder="老师工号/姓名模糊(精确)查找" id="keywords"
						class="input"
						style="width:250px; line-height:17px;display:inline-block" /> <a
						href="javascript:teachermhcx()" class="button border-main icon-search"
						> 搜索</a></li>
				</ul>
			</div>
			<table class="table table-hover text-center"  style="font-size:16px;">
				<tr>
					<th width="80" style="text-align:left; padding-left:20px;">序号</th>
					<th width="8%">老师工号</th>
					<th width="8%">老师密码</th>
					<th width="7%">姓名</th>
					<th width="7%">性别</th>
					<th width="10%">年龄</th>
					<th width="10%">电话</th>
					<th width="17%">E-mail</th>
					<th>操作</th>
				</tr>
				<volist name="list" id="vo">
				
				<c:forEach var="tea" items="${tea}" varStatus="status" begin="0" end="3">
				<tr>
					<td style="text-align:left; padding-left:20px;"><input
						type="checkbox" name="id[]" value="" /> ${status.index+1}</td>
					<td><input type="text" value="${tea.tid}" name="tid" id="tid"  style="border: 0px;text-align: center;width: 100px;display: none;">${tea.tid}</td>
					<td><input type="text" value="${tea.tkey}" name="tkey" id="tkey"  style="border: 0px;text-align: center;width: 100px"></td>
					<td><input type="text" value="${tea.tname}" name="tname" id="tname"  style="border: 0px;text-align: center;width: 100px"></td>
					<td><input type="text" value="${tea.tsex}" name="tsex" id="tsex"  style="border: 0px;text-align: center;width: 80px"></td>
					<td><input type="text" value="${tea.tage}" name="tage" id="tage"  style="border: 0px;text-align: center;width: 80px"></td>
					<td><input type="text" value="${tea.tphone}" name="tphone" id="tphone"  style="border: 0px;text-align: center;width: 120px"></td>
					<td><input type="text" value="${tea.tmail}" name="tmail" id="tmail"  style="border: 0px;text-align: center;width: 180px"></td>
					<td>
					     <div class="button-group">
							<a class="button border-main" href="javascript:updateteacher(${status.index-START})" style="font-size:18px;font-weight: 800"><span class="icon-edit"></span> 修改</a> 
							<a class="button border-red" href="${pageContext.request.contextPath}/deleteTea?tid=${tea.tid}" style="font-size:18px;font-weight: 800" >
								<span class="icon-trash-o"></span> 删除</a>
						 </div>
				    </td>
				</tr>
				</c:forEach>
				<tr>
					<td colspan="10"><div class="pagelist">
							<div class="pagelist" style="text-align: right;">
							<c:if test="${pagenum eq 1}">
								<span style="font-size:20px;border:0">首页&nbsp;&nbsp;&nbsp;上一页</span>
							</c:if>
							
							<c:if test="${pagenum ne 1}">
								<a href="${pageContext.request.contextPath}/Teacherpage?pagenum=1" class="button bg-main " style="font-size:20px;">首页</a>
								<a href="${pageContext.request.contextPath}/Teacherpage?pagenum=${pagenum-1}" class="button bg-main " style="font-size:20px;">上一页</a>
							</c:if>
							
							<c:if test="${pagenum ne zong}">
								<a href="${pageContext.request.contextPath}/Teacherpage?pagenum=${pagenum+1}" class="button bg-main " style="font-size:20px;">下一页</a>
								<a href="${pageContext.request.contextPath}/Teacherpage?pagenum=${zong}" class="button bg-main " style="font-size:20px;">末页</a>
							</c:if>
							
							<c:if test="${pagenum eq zong}">
								<span style="font-size:20px;border:0">下一页&nbsp;&nbsp;&nbsp;末页</span>
							</c:if>
							<span style="font-size:20px;border:0">共&nbsp;${num}&nbsp;条</span>
							<span style="font-size:20px;border:0">当前第&nbsp;${pagenum}&nbsp;页</span>
							<span style="font-size:20px;border:0">共&nbsp;${zong}&nbsp;页</span>
					   </div>
						
					</td>
				</tr>
			</table>
		</div>
	</form>
	<script type="text/javascript">
		//老师表模糊查询
		function teachermhcx(){
		var tname=document.getElementById("keywords").value;
		window.location.href="${pageContext.request.contextPath}/Teachermohu?tname="+tname.trim();
          }


		//单个删除
		function del(id, mid, iscid) {
			if (confirm("您确定要删除吗?")) {

			}
		}

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

		
		
	//修改   根据集合下表获取每个对象的属性值	
	function updateteacher(index){
	  var tid=document.getElementsByName("tid")[index].value;
	  var tkey=document.getElementsByName("tkey")[index].value;
	  var tname=document.getElementsByName("tname")[index].value;
	  var tsex=document.getElementsByName("tsex")[index].value;
	  var tage=document.getElementsByName("tage")[index].value;
	  var tphone=document.getElementsByName("tphone")[index].value;
	  var tmail=document.getElementsByName("tmail")[index].value;
	  window.location.href="${pageContext.request.contextPath}/updateTeacher?tid="+tid+"&tkey="+tkey+"&tname="+tname+"&tsex="+tsex+"&tage="+tage+"&tphone="+tphone+"&tmail="+tmail
	}
	</script>
</body>
</html>