<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%-- 
<c:if test="${empty re }">
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
				<strong class="icon-reorder"><span style="font-size:16px;color:blue;"></span>&nbsp;&nbsp;选修课学生列表</strong> 
			</div>

		   
		   
			<table class="table table-hover text-center" style="font-size:16px;" >
				<tr>
					<th  style="text-align:left; padding-left:20px;">序&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</th>
					<th width="10%">学生学号</th>
					<th width="10%">学生姓名</th>
					<th width="7%">性别</th>
					<th width="7%">年龄</th>
					<th width="12%">电话</th>
					<th width="12%">课程名称</th>
					<th width="8%">课程学分</th>
					<th width="10%">课程类型</th>
					<th width="7%">考试分数<br>初始0分</th>
					<th width="15%">添加/修改分数</th>					
				</tr>
			
				 
				<volist name="list" id="vo"> 	
				
				
				<form  action="/elective/DaFen" method="post">
				<c:forEach var="course" items="${XuanXiuKe}" varStatus="status">		
				     <c:forEach var="stu" items="${course.stu}" varStatus="status">	
				 <tr>
					<td>${status.count }</td>
					<td><input type="text" value="${stu.sid}" name="sid" style="display: none;">${stu.sid}</td>
					<td>${stu.sname}</td>
					<td>${stu.ssex}</td>
					<td>${stu.sage}</td>
					<td>${stu.sphone}</td>
					<td>${course.cname}</td>
					<td><input type="text" value="${course.ccredit}" name="ccredit" style="display: none;">${course.ccredit}</td>
					<td>${course.ctype}</td>
					 <td>
					   <input type="text" value="${course.cid}" name="cid" style="display: none;">
					   <input type="text" value="${stu.elect.score}" name="scores" style="text-align: center;color:blue;font-weight: 800;font-size:18px;width: 70px">
					 </td>
					<td>
					    <div class="button-group" >			        
							<input type="submit" value="确认分数" class="button border-main" style="font-size:18px;font-weight: 800" >
						 </div>					
					</td>
				  </tr>
				  </c:forEach>
			 </c:forEach>
			 
				  </form>
				
			</table>
		   <c:if test="${session.XuanXiuKe}">
			   <center>
			    <span style="font-size:26px;color:red">  您还没有授选修课，请向学校教务处申请！</span>
			   </center>
		   </c:if>
			
		</div>
	
	
</body>
</html>