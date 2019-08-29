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
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>网站信息</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>   
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>课程信息添加</strong></div>
  <div class="body-content">
  
    <form method="post" class="form-x" action="/elective/insertKeCheng">
      <div class="form-group"  style="font-size: 17px;">
         <div class="label">
           <label>课程编号：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text" class="input" name="cid" id="cid" value="" onKeyUp="this.value=this.value.replace(/[^\d]/g,'')" onafterpaste="this.value=this.value.replace(/[^\d]/g,'')"  />
           <div class="tips"></div>
         </div>
      </div>
          
      <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>老师工号：</label>
         </div>
         <div class="field" style="width: 300px">
             <select  style="width: 300px;height: 40px;"  name="tid" class="input">
                <option style="color:#DDDDDD">----------请选择老师工号(必选项)------------</option>
                <c:forEach var="teacher" items="${list}">
                <option value="${teacher.tid}">工号：${teacher.tid}&nbsp;&nbsp;姓名：${teacher.tname}</option>
                </c:forEach>
             </select>
           <div class="tips"></div>
         </div>
      </div>  
      
       <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>课程名称：</label>
         </div>
         <div class="field" style="width: 300px">
            <input type="text" class="input" name="cname" id="cname" value="" /> 
           <div class="tips"></div>
         </div>
      </div>     
      
       <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>课程类型：</label>
         </div>
         <div class="field" style="width: 300px">
             <select style="width: 300px;height: 40px;"  name="ctype" class="input">
                 <option style="color:#DDDDDD">----------请选择课程类型(必选项)-----------</option>
                 <option value="必修课">必修课</option>
                 <option value="选修课">选修课</option>
             </select>
           <div class="tips"></div>
         </div>
      </div>     
      
       <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>课程学分：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text" class="input" name="ccredit" id="ccredit" value="" onKeyUp="this.value=this.value.replace(/[^\d]/g,'')" onafterpaste="this.value=this.value.replace(/[^\d]/g,'')"/>
           <div class="tips"></div>
         </div>
      </div>      
      
      <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>容纳最大学生：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text" class="input" name="cmax"  id="cmax"value="" onKeyUp="this.value=this.value.replace(/[^\d]/g,'')" onafterpaste="this.value=this.value.replace(/[^\d]/g,'')" />
           <div class="tips"></div>
         </div>
      </div>      
      
      <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>备注：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text" class="input" name="cnote" id="cnote"  value="" />
           <div class="tips"></div>
         </div>
      </div>     
      
       <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>当前选课人数：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text" class="input" name="cprecid" id="cprecid" value="" onKeyUp="this.value=this.value.replace(/[^\d]/g,'')" onafterpaste="this.value=this.value.replace(/[^\d]/g,'')"/>
           <div class="tips"></div>
         </div>
      </div>
     
     <div class="form-group" style="font-size: 17px;">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit" 
          style="font-size: 20px;"> 提交</button>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="reset" value="重置" class="button bg-main icon-check-square-o" style="font-size:20px;">
        </div>
      </div>
      
    </form>
    
  </div>
</div>
</body>

</html>