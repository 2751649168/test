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
			<div class="padding border-bottom">
				<ul class="search" style="padding-left:10px;">
					<li><input type="text" placeholder="学号/姓名/地址模糊(精确)查" id="keywords"
						class="input"
						style="width:250px; line-height:17px;display:inline-block" /> <a
						href="javascript:mhcx()" class="button border-main icon-search"
						> 搜索</a></li>
				</ul>
			</div>
			<table class="table table-hover text-center" style="font-size:16px;">
				<tr>
					<th width="70" style="text-align:left; padding-left:20px;">序号</th>
					<th width="7%">学生学号</th>
					<th width="7%">学生密码</th>			
					<th width="7%">姓名</th>
					<th width="5%">性别</th>
					<th width="5%">年龄</th>
					<th width="8%">所修学分</th>
					<th width="16%">地址</th>
					<th width="7%">电话</th>
					<th width="13%">E-mail</th>
					<th>操作</th>
				</tr> 
				
				<c:forEach var="stu" items="${sessionScope.page}" varStatus="status"  begin="${0}"  end="${3}">
				<tr>
					<td style="text-align:left; padding-left:20px;"><input
						type="checkbox" name="id" value="" />${status.index+1}</td>
					<td><input type="text" value="${stu.sid}" name="sid" id="sid" style="border: 0px;text-align: center;width: 100px;display: none;">${stu.sid}</td>
					<td><input type="text" value="${stu.skey}" name="skey" id="skey" style="border: 0px;text-align: center;width: 80px"></td>
					<td><input type="text" value="${stu.sname}" name="sname" id="sname" style="border: 0px;text-align: center;width: 50px"></td>
					<td><input type="text" value="${stu.ssex}" name="ssex" id="ssex" style="border: 0px;text-align: center;width: 50px"></td>
					<td><input type="text" value="${stu.sage}" name="sage" id="sage" style="border: 0px;text-align: center;width: 50px"></td>
					<td><input type="text" value="${stu.scredit}" name="scredit" id="scredit" style="border: 0px;text-align: center;width: 50px"></td>
					<td><input type="text" value="${stu.saddress}" name="saddress" id="saddress" style="border: 0px;text-align: center;width: 180px"></td>
					<td><input type="text" value="${stu.sphone}" name="sphone" id="sphone" style="border: 0px;text-align: center;width: 110px"></td>
					<td><input type="text" value="${stu.semail}" name="semail" id="semail" style="border: 0px;text-align: center;width: 180px"></td>
					<td>
					     <div class="button-group">
					        
							<a class="button border-main" href="javascript:updatestu(${status.index-START})" style="font-size:18px;font-weight: 800"><span class="icon-edit"></span> 修改</a> 
							<a class="button border-red" href="${pageContext.request.contextPath}/deletestu?sid=${stu.sid}" style="font-size:18px;font-weight: 800">
								<span class="icon-trash-o"></span> 删除</a>
						 </div>
				    </td>
				</tr>
				</c:forEach>
				
				
				<tr>
					<td colspan="10">
					<div class="pagelist" style="text-align: right;">
							<c:if test="${pagenum eq 1}">
								<span style="font-size:20px;border:0">首页&nbsp;&nbsp;&nbsp;下一页</span>
							</c:if>
							
						<c:if test="${pagenum ne 1}">
								<a href="${pageContext.request.contextPath}/PageNum?pagenum=1" class="button bg-main " style="font-size:20px;">首页</a>
								<a href="${pageContext.request.contextPath}/PageNum?pagenum=${pagenum-1}" class="button bg-main " style="font-size:20px;">上一页</a>
							</c:if> 
							
							<c:if test="${pagenum ne zongye}">
								<a href="${pageContext.request.contextPath}/PageNum?pagenum=${pagenum+1}" class="button bg-main " style="font-size:20px;">下一页</a>
								<a href="${pageContext.request.contextPath}/PageNum?pagenum=${zongye}" class="button bg-main " style="font-size:20px;">末页</a>
							</c:if>
							
							<c:if test="${pagenum eq zongye}">
								<span style="font-size:20px;border:0">下一页&nbsp;&nbsp;&nbsp;末页</span>
							</c:if>
							<span style="font-size:20px;border:0">共&nbsp;${zongshu}&nbsp;条</span>
							<span style="font-size:20px;border:0">当前第&nbsp;${pagenum}&nbsp;页</span>
							<span style="font-size:20px;border:0">共&nbsp;${zongye}&nbsp;页</span>
					   </div>
					</td>
				</tr>
				
			</table>
		</div>
	
	<script type="text/javascript">

      //模糊查询
      function mhcx(){
      var st=document.getElementById("keywords").value;
      window.location.href="${pageContext.request.contextPath}/mohuchaxun?st="+st.trim();
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

		
		
		//根据集合下表获取每个对象的值（修改）
		function updatestu(index){
		
		var sid=document.getElementsByName("sid")[index].value;
		var skey=document.getElementsByName("skey")[index].value;
		var sname=document.getElementsByName("sname")[index].value;
		var ssex=document.getElementsByName("ssex")[index].value;
		alert(sname)
		var sage=document.getElementsByName("sage")[index].value;
		var scredit=document.getElementsByName("scredit")[index].value;
		var saddress=document.getElementsByName("saddress")[index].value;
		var sphone=document.getElementsByName("sphone")[index].value;
		var semail=document.getElementsByName("semail")[index].value;
		window.location.href="${pageContext.request.contextPath}/madatestu?sid="+sid+"&skey="+skey+"&sname="+sname+"&ssex="+ssex+"&sage="+sage+"&scredit="+scredit+"&saddress="+saddress+"&sphone="+sphone+"&semail="+semail;
		}
	</script>
</body>
</html>