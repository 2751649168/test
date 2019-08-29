package com.School.controlle;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.School.service.UpdateService;

@Controller
public class UppassConter {
	@Autowired
    UpdateService uppassWord;
	
    @RequestMapping("/uppass")
    public ModelAndView insert(HttpServletRequest request, HttpServletResponse response){
    	   
		   response.setCharacterEncoding("utf-8");
		   response.setContentType("text/html;charset=utf-8");
		   String username=request.getParameter("sid");
           String password=request.getParameter("newpass");
           String password1=request.getParameter("oldpass");
           
           Integer i=uppassWord.UpdateService(username,password,password1);
           ModelAndView modelAndView=new ModelAndView();
           int a=i;
           modelAndView.addObject("list",a);
           PrintWriter out;
		try {
			out = response.getWriter();
			if(a==0){
			 out.print("<script>alert('更改密码失败');</script>");
			
			}else{
	            out.print("<script>alert('更改密码成功');</script>");
			}
			modelAndView.setViewName("userstudentpass");
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   
      return modelAndView;
    }

}
