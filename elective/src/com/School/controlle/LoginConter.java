package com.School.controlle;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.School.service.loginService;
import com.School.vo.Manager;
import com.School.vo.StuXinxi;
import com.School.vo.Teachar;
@Controller
public class LoginConter {
	 @Autowired
	    loginService service;
	    @RequestMapping("login.action")
	    public ModelAndView insert(HttpServletRequest request, HttpServletResponse response){
	    	   
			   response.setCharacterEncoding("utf-8");
			   response.setContentType("text/html;charset=utf-8");
	           String name=request.getParameter("name");
	           String password=request.getParameter("password");
	           String di=request.getParameter("qx");
	           ModelAndView modelAndView=new ModelAndView();
	           PrintWriter out;
	   		  HttpSession   session= request.getSession();
	   			try {
					           out = response.getWriter();				
					           if(di.equals("student")){
					           StuXinxi obj=service.login(name, password, di);       
						       if(obj!=null){
						    	   out.print("<script>alert('登陆成功'),window.location.href='userstudentindex.jsp'</script>");
							       System.out.println(obj);
							       session.setAttribute("stu", obj); 
								}else{
									out.print("<script>alert('登陆失败'),window.location.href='login.jsp'</script>");
									 modelAndView.setViewName("login");
								}
					           }else if(di.equals("teacher")){
					        	 Teachar obj=service.login(name, password, di);
					        	 if(obj!=null){
							    	   out.print("<script>alert('登陆成功'),window.location.href='userteacherindex.jsp'</script>");
								       System.out.println(obj);
								       session.setAttribute("TEA", obj); 
									}else{
										out.print("<script>alert('登陆失败'),window.location.href='login.jsp'</script>");
									}
					           }else if(di.equals("manager")){
					        	  Manager obj=service.login(name, password, di);
					        	  if(obj!=null){
					        		  out.print("<script>alert('登陆成功'),window.location.href='managerindex.jsp'</script>");
								       System.out.println(obj);
								       session.setAttribute("manager", obj); 
					        	  }else{
					        		  out.print("<script>alert('登陆失败'),window.location.href='login.jsp'</script>");
					        	  }
					           }
					        	   
					  
					out.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	   			
          return modelAndView;
	    }

}
