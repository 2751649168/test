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

import com.School.service.IDeleteTea;
import com.shop.xinxi.PagBean;

@Controller
public class DeletTea {
	@Autowired
	IDeleteTea detea;
	@RequestMapping("/deleteTea")
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws IOException{
	 response.setCharacterEncoding("utf-8");
	 response.setContentType("text/html;charset=utf-8");
	 request.setCharacterEncoding("utf-8");
	String tid= request.getParameter("tid");
	 boolean i=detea.DeleteaTeacher(tid);
	 PrintWriter out = response.getWriter();
	 ModelAndView modelAndView=new ModelAndView();
	 if(i=true){
		 out.print("<script>alert('删除成功')</script>");
	 }else{
		 out.print("<script>alert('删除失败')</script>");
	 }
		modelAndView.setViewName("teacherlist");
		 
	 out.close();
	return modelAndView;
	}
}
