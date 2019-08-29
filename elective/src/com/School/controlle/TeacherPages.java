package com.School.controlle;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.School.service.TeacherPage;
import com.shop.xinxi.PagBean;
@Controller
public class TeacherPages {
	@Autowired
    TeacherPage page;
	@RequestMapping("/Teacherpage")
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws IOException{
	response.setCharacterEncoding("utf-8");
	 response.setContentType("text/html;charset=utf-8");
	 request.setCharacterEncoding("utf-8");
  ModelAndView modelAndView=new ModelAndView();
  HttpSession  session= request.getSession();
  Integer pagenum=Integer.valueOf(request.getParameter("pagenum"));
	Integer pagesize=3;
	PagBean kecheng=page.getTeapage(pagenum, pagesize);
	session.setAttribute("zong", kecheng.getTotalpage());
	session.setAttribute("num", kecheng.getTotalRecord());
	session.setAttribute("end", kecheng.getEnd());
	session.setAttribute("Start", kecheng.getStart());
	session.setAttribute("tea", kecheng.getList());
	session.setAttribute("pagenum", pagenum);
	modelAndView.setViewName("teacherlist");
	modelAndView.addObject("lists",kecheng);
 return modelAndView;
 }
}
