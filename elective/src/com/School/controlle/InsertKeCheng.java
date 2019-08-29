package com.School.controlle;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.School.dao.Mapper;
import com.School.service.IKeChenginsert;
import com.School.vo.KeCheng;
import com.School.vo.Teachar;

@Controller
public class InsertKeCheng {
	@Autowired
IKeChenginsert ke;
	@Autowired
	Mapper mapper;
	@RequestMapping("/insertKeCheng")
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws IOException{
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 request.setCharacterEncoding("utf-8");
		 ModelAndView modelAndView=new ModelAndView();
		  KeCheng kecheng=new KeCheng();
		  kecheng.setCid(request.getParameter("cid"));
		  kecheng.setTid(request.getParameter("tid"));
		  kecheng.setCname(request.getParameter("cname"));
		  kecheng.setCtype(request.getParameter("ctype"));
		  kecheng.setCnote(request.getParameter("cnote"));
		  kecheng.setCmax(Integer.valueOf(request.getParameter("cmax")));
		  kecheng.setCprecid(Integer.valueOf(request.getParameter("cprecid")));
		  kecheng.setCcredit(Float.valueOf((request.getParameter("ccredit"))));
		boolean i= ke.KeChengTianJia(kecheng);
		 PrintWriter out = response.getWriter();
		 if(i==true){
			 out.print("<script>alert('添加成功')</script>");
		 }else{
			 out.print("<script>alert('添加失败')</script>");
		 }
		 out.close();
		 List<Teachar> list= mapper.getTeacher();
			
			HttpSession  session= request.getSession();
			session.setAttribute("list", list);
			modelAndView.setViewName("courseadd");
		return modelAndView;
	}
}
