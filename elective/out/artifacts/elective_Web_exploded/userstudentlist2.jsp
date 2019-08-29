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
				<strong class="icon-reorder"> 学生内容列表</strong> 
				<a href=""
					style="float:right; display:none;">添加字段</a>
			</div>
		
			<table class="table table-hover text-center" style="font-size:16px;" >
				<tr>
					<th width="10%">学生学号</th>
					<th width="8%">姓名</th>
					<th width="8%">性别</th>
					<th width="8%">年龄</th>
					<th width="8%">所修学分</th>
					<th width="20%">地址</th>
					<th width="10%">电话</th>
					<th width="20%">E-mail</th>
				</tr>
				
					<tr>
						<td>${stu.sid}</td>
						<td>${stu.sname}</td>
						<td>${stu.ssex}</td>
						<td>${stu.sage}</td>
						<td>${stu.scredit}</td>
						<td>${stu.saddress}</td>
						<td>${stu.sphone}</td>
						<td>${stu.semail}</td>
					</tr>
				
			</table>
		</div>
	
	
</body>
</html>