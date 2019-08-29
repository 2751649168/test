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
				<strong class="icon-reorder"><span style="font-size:16px;color:blue;">&nbsp;${TEA.tname}</span>&nbsp;&nbsp;授课信息列表</strong> 
				<a href=""
					style="float:right; display:none;">添加字段</a>
			</div>
		
			<table class="table table-hover text-center" style="font-size:16px;" >
				<tr>
					<th  style="text-align:left; padding-left:20px;">序&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</th>
					<th width="13%">课程编码</th>
					<th width="13%">授课名称</th>
					<th width="13%">授课类型</th>
					<th width="13%">课程学分</th>
					<th width="20%">上课教室</th>
					<th width="22%">选课人数(容纳人数/选课人数)</th>
				</tr>
				<volist name="list" id="vo"> 
				
				<c:forEach var="lists" items="${allC}" varStatus="status">				
				<tr>
					<td>${status.count}</td>
					<td>${lists.cid}</td>
					<td>${lists.cname}</td>
					<td>${lists.ctype}</td>
					<td>${lists.ccredit}</td>
					<td>${lists.cnote}</td>
					<td>
						<c:if test="${lists.ctype eq '必修课'}">
							${lists.cmax}/${lists.cmax}
						</c:if>
						
						<c:if test="${lists.ctype eq '选修课'}">
						    ${lists.cmax}/${lists.cprecid}
						</c:if>
					</td>
					
					
				</tr>
				</c:forEach>
				
			</table>
		</div>
	
	
</body>
</html>