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
    <title>网站信息</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>  
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>学生信息添加</strong></div>
  <div class="body-content">
  
    <form method="post" class="form-x" action="/elective/insertStu">
    
      <div class="form-group"  style="font-size: 17px;">
         <div class="label">
           <label>学生学号：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text" class="input" name="sid" id="sid" value="" onKeyUp="this.value=this.value.replace(/[^\d]/g,'')" onafterpaste="this.value=this.value.replace(/[^\d]/g,'')"/>
           <div class="tips"></div>
         </div>
      </div>
      
       <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>登录密码：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text" class="input" name="skey" id="skey" value="" />
           <div class="tips"></div>
         </div>
      </div>     
      
       <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>学生姓名：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text" class="input" name="sname" id="sname" value="" />
           <div class="tips"></div>
         </div>
      </div>     
      
       <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>学生性别：</label>
         </div>
         <div class="field" style="width: 100px">
            <select class="input" name="ssex" id="ssex">               
                <option value="男">男</option>
                <option value="女">女</option>
            </select>
           <!-- <input type="text" class="input" name="ssex" id="ssex" value="" /> -->
           <div class="tips"></div>
         </div>
      </div>     
      
       <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>学生年龄：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text" class="input" name="sage" id="sage" value="" onKeyUp="this.value=this.value.replace(/[^\d]/g,'')" onafterpaste="this.value=this.value.replace(/[^\d]/g,'')"/>
           <div class="tips"></div>
         </div>
      </div>      
      
      <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>默认所修学分：</label>
         </div>
         <div class="field" style="width: 30px">
           <input type="text" class="input" name="scredit"  id="scredit"value="0" readonly/>
           <div class="tips"></div>
         </div>
      </div>      
      
      <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>地址：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text" class="input" name="saddress" id="saddress"  value="" />
           <div class="tips"></div>
         </div>
      </div>     
      
       <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>电话：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text" class="input" name="sphone" id="sphone" value="" onKeyUp="this.value=this.value.replace(/[^\d]/g,'')" onafterpaste="this.value=this.value.replace(/[^\d]/g,'')"/>
           <div class="tips"></div>
         </div>
      </div>
      
      <div class="form-group" style="font-size: 17px;">
         <div class="label">
           <label>E-mail：</label>
         </div>
         <div class="field" style="width: 300px">
           <input type="text"  name="semail" id="semail"  value="" style="width: 155px;height: 40px;" onKeyUp="value=value.replace(/[\W]/g,'')"/>
           <select  name="mail" id="mail" style="width: 135px;height: 40px;">
             <option value="@163.com">@163.com</option>
             <option value="@qq.com">@qq.com</option>
             <option value="@yahoo.com">@yahoo.com</option>
             <option value="@vipby.com">@vipby.com</option>
           </select>
           <div class="tips"></div>
         </div>
      </div>
     
     <div class="form-group" style="font-size: 17px;">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
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
  var sid=document.getElementById("sid").value;
  var skey=document.getElementById("skey").value;
  var sname=document.getElementById("sname").value;
  var ssex=document.getElementById("ssex").value;
  var sage=document.getElementById("sage").value;
  var scredit=document.getElementById("scredit").value;
  var saddress=document.getElementById("saddress").value;
  var sphone=document.getElementById("sphone").value;
  var semail=document.getElementById("semail").value;
  if(sid!=""&&skey!=""&&sname!=""&&ssex!=""&&sage!=""&&scredit!=""&&saddress!=""&&sphone!=""&&semail!=""){
   if(sphone.length==11){
     if((sphone.charAt(0))==1){
      if((sphone.charAt(1))==3||(sphone.charAt(1))==5||(sphone.charAt(1))==7||(sphone.charAt(1))==8){
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