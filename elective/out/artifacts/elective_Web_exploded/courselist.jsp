<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%-- <c:if test="${empty re }">
<c:redirect url="login.jsp"  />
</c:if> --%>
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
<!-- 			<div class="padding border-bottom">
				<ul class="search" style="padding-left:10px;">
					<li><input type="text" placeholder="请设置选修课关闭和撤回时间" name="settime"
						class="input"
						style="width:250px; line-height:17px;display:inline-block" /> <a
						href="javascript:setxttime()" class="button border-main "
						> 确认</a>
						</li>	
				</ul>	
			</div> -->
			<table class="table table-hover text-center" style="font-size:16px;" >
				<tr>
					<th width="100px" style="text-align:left; padding-left:20px;">序号</th>
					<th width="6%">课程编号</th>
					<th width="5%">老师工号</th>	
					<th width="8%">老师姓名</th>					
					<th width="5%">课程名称</th>
					<th width="5%">课程类型</th>
					<th width="5%">课程学分</th>
					<th width="7%">容纳最大学生</th>
					<th width="15%">备注</th>
					<th width="7%">当前选<br>课人数</th>
					<th>操作</th>
				</tr>
				<volist name="list" id="vo"> 
				
				<c:forEach var="course" items="${course}" varStatus="status" begin="0" end="3">
				<form action="/elective/kechengup" method="post">
				<tr>
					<td style="text-align:left; padding-left:20px;"><input
						type="checkbox" name="id[]" value="" />${status.index+1}</td>
                    <td><input type="text" value="${course.cid}" name="cid" id="cid" style="border: 0px;text-align: center;width: 90px;display: none;">${course.cid}</td>
                    <td><input type="text" value="${course.teacher.tid}" name="tid" id="tid" style="border: 0px;text-align: center;width: 90px;"></td>
                    <td><input type="text" value="${course.teacher.tname}" name="tname" id="tname" style="border: 0px;text-align: center;width: 90px;display: none;">${course.teacher.tname}</td>
                    <td><input type="text" value="${course.cname}" name="cname" id="cname" style="border: 0px;text-align: center;width: 90px;"></td>
                    <td><input type="text" value="${course.ctype}" name="ctype" id="ctype" style="border: 0px;text-align: center;width: 90px;"></td>
                    <td><input type="text" value="${course.ccredit}" name="ccredit" id="ccredit" style="border: 0px;text-align: center;width: 90px;"></td>
                    <td><input type="text" value="${course.cmax}" name="cmax" id="cmax" style="border: 0px;text-align: center;width: 100px;"></td>
                    <td><input type="text" value="${course.cnote}" name="cnote" id="cnote" style="border: 0px;text-align: center;width: 200px;"></td>
                    <td><input type="text" value="${course.cprecid}" name="cprecid" id="cprecid" style="border: 0px;text-align: center;width: 100px;display: none;" >${course.cprecid} </td>
					<td>
					     <div class="button-group"  >
							<input class="button border-main" type="submit" value="修改" style="font-size:18px;font-weight: 800">
							<a class="button border-red" href="${pageContext.request.contextPath}/kechengdele?cid=${course.cid}" style="font-size:18px;font-weight: 800" >
								 删除</a>
						 </div>
				    </td>
				</tr>
				</form>
				</c:forEach>
				
				<tr>
					<td colspan="11" >
					   <div class="pagelist" style="text-align: right;">
							<c:if test="${PAGENUM eq 1}">
								<span style="font-size:20px;border:0">首页&nbsp;&nbsp;&nbsp;上一页</span>
							</c:if>
							
							<c:if test="${pagenum ne 1}">
								<a href="${pageContext.request.contextPath}/kechengpage?pagenum=1" class="button bg-main " style="font-size:20px;">首页</a>
								<a href="${pageContext.request.contextPath}/kechengpage?pagenum=${pagenum-1}" class="button bg-main " style="font-size:20px;">上一页</a>
							</c:if>
							
							<c:if test="${pagenum ne zongy}">
								<a href="${pageContext.request.contextPath}/kechengpage?pagenum=${pagenum+1}" class="button bg-main " style="font-size:20px;">下一页</a>
								<a href="${pageContext.request.contextPath}/kechengpage?pagenum=${zongy}" class="button bg-main " style="font-size:20px;">末页</a>
							</c:if>
							
							<c:if test="${pagenum eq zongy}">
								<span style="font-size:20px;border:0">下一页&nbsp;&nbsp;&nbsp;末页</span>
							</c:if>
							<span style="font-size:20px;border:0">共&nbsp;${nums}&nbsp;条</span>
							<span style="font-size:20px;border:0">当前第&nbsp;${pagenum}&nbsp;页</span>
							<span style="font-size:20px;border:0">共&nbsp;${zongy}&nbsp;页</span>
					   </div>
					</td>
				</tr>
			</table>
		</div>
	

</body>

</html>