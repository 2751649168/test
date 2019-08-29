<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



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
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>老师信息添加</strong></div>
  <div class="body-content">
  
    <form method="post" class="form-x" action="/elective/inserttea">
    
      <div class="form-group"  style="font-size: 17px;">
         <div class="label">
           <label>老师工号：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text" class="input" name="tid" id="tid" value="" onKeyUp="this.value=this.value.replace(/[^\d]/g,'')" onafterpaste="this.value=this.value.replace(/[^\d]/g,'')" />
           <div class="tips"></div>
         </div>
      </div>
      
       <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>登录密码：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text" class="input" name="tkey" id="tkey" value="" />
           <div class="tips"></div>
         </div>
      </div>     
      
       <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>老师姓名：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text" class="input" name="tname" id="tname" value="" />
           <div class="tips"></div>
         </div>
      </div>     
      
       <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>老师性别：</label>
         </div>
         <div class="field" >
          <input type="radio" value="男" name="tsex" checked="checked">男
          &nbsp;&nbsp;&nbsp;&nbsp;
          <input type="radio" value="女" name="tsex" >女
         
           <!-- <input type="text" class="input" name="tsex" id="tsex" value="" /> -->
           <div class="tips"></div>
         </div>
      </div>     
      
       <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>老师年龄：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text" class="input" name="tage" id="tage" value="" onKeyUp="this.value=this.value.replace(/[^\d]/g,'')" onafterpaste="this.value=this.value.replace(/[^\d]/g,'')"/>
           <div class="tips"></div>
         </div>
      </div>      
      
       <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>电话：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text" class="input" name="tphone" id="tphone" value="" onKeyUp="this.value=this.value.replace(/[^\d]/g,'')" onafterpaste="this.value=this.value.replace(/[^\d]/g,'')"/>
           <div class="tips"></div>
         </div>
      </div>
      
      <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>E-mail：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text"  name="tmail" id="temail"  value="" style="width: 155px;height: 40px;" onKeyUp="value=value.replace(/[\W]/g,'')" />
           <select  name="mail" id="mail" style="width: 135px;height: 40px;">
             <option value="@163.com">@163.com</option>
             <option value="@qq.com">@qq.com</option>
             <option value="@yahoo.com">@yahoo.com</option>
             <option value="@vipby.com">@vipby.com</option>
           </select>
           
           <div class="tips"></div>
         </div>
      </div>
     
     <div class="form-group" >
        <div class="label">
          <label></label>
        </div>
        <div class="field" >
          <button class="button bg-main icon-check-square-o" type="submit" 
          style="font-size: 20px;" onclick="return chenktrim()"> 提交</button>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="reset" value="重置" class="button bg-main icon-check-square-o" style="font-size:20px;">
        </div>
      </div>
      
    </form>
    
  </div>
</div>
</body>
<script type="text/javascript">
//判断不能为空
function chenktrim(){
  var tid=document.getElementById("tid").value;
  var tkey=document.getElementById("tkey").value;
  var tname=document.getElementById("tname").value;
  var tage=document.getElementById("tage").value;
  var tphone=document.getElementById("tphone").value;
  var temail=document.getElementById("temail").value;
  if(tid!=""&&tkey!=""&&tname!=""&&tage!=""&&tphone!=""&&temail!=""){
  if(tphone.length==11){
     if((tphone.charAt(0))==1){
      if((tphone.charAt(1))==3||(tphone.charAt(1))==5||(tphone.charAt(1))==7||(tphone.charAt(1))==8){
         return true;
      }else{
        alert("手机号错误");
        return false;
      }
     }else{
        alert("手机号错误");
        return false;
    }
   }else{
       alert("手机号必须是11位");
      return false;
  }
  }else{
     alert("不能有空值");
      return false;
  }



}

</script>
</html>