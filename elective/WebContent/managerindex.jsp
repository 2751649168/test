<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <c:if test="${empty re }">
<c:redirect url="login.jsp"  />
</c:if> --%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>教务处管理中心</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" /><span style="color:red;font-weight: 800">管理员</span>教务管理中心</h1>
  </div>
  <div class="head-l"> &nbsp;&nbsp;<a class="button button-little bg-red" href="login.jsp"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav" style="font-size:16px">
  <div class="leftnav-title" style="font-size:18px"><strong><span class="icon-list" ></span>菜单列表</strong></div>
  <h2 style="font-size:18px"><span class="icon-user" ></span>基本设置</h2>
  <ul style="display:block">
    <li><a href="page.jsp" target="right"><span class="icon-caret-right"></span>网站首页</a></li>  
<!--     <li><a href="pass.jsp" target="right"><span class="icon-caret-right"></span>修改密码</a></li>
 -->  </ul>   
  <h2 style="font-size:18px"><span class="icon-pencil-square-o"></span>学生管理</h2>
  <ul>
    <li><a href="${pageContext.request.contextPath}/PageNum?pagenum=1" target="right"><span class="icon-caret-right"></span>学生信息管理</a></li>
    <li><a href="studentadd.jsp" target="right"><span class="icon-caret-right"></span>学生信息添加</a></li>
    <li><a href="setelectivetime.jsp" target="right"><span class="icon-caret-right"></span>设置选课时间</a></li>
  </ul>  
  
  <h2 style="font-size:18px"><span class="icon-pencil-square-o"></span>老师管理</h2>
    <ul>
       <li><a href="${pageContext.request.contextPath}/Teacherpage?pagenum=1" target="right"><span class="icon-caret-right"></span>老师信息管理</a></li>        
       <li><a href="teacheradd.jsp" target="right"><span class="icon-caret-right"></span>老师信息添加</a></li>
    </ul>
  
  <h2 style="font-size:18px"><span class="icon-pencil-square-o"></span>课程管理</h2>
  <ul>
     <li><a href="${pageContext.request.contextPath}/kechengpage?pagenum=1" target="right"><span class="icon-caret-right"></span>课程信息管理</a></li>
     <li><a href="${pageContext.request.contextPath}/getTeachertid" target="right"><span class="icon-caret-right"></span>课程信息添加</a></li>
  </ul>
  
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a href="{:U('Index/page')}" target="right" class="icon-home"> 首页</a></li>
  <li><a href="##" id="a_leader_txt">网站信息</a></li>
  <li><b>当前语言：</b><span style="color:red;">中文</php></span>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;切换语言：<a href="">中文</a> &nbsp;&nbsp;<a href="">英文</a> </li>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="page.jsp" name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">
<p>来源:<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
</div>
</body>
</html>