package com.School.controlle;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.School.service.IInsertTeacher;
import com.School.vo.Stu;
import com.School.vo.Teachar;
@Controller
public class TeacherInsert {
	@Autowired
	IInsertTeacher tea;
	@RequestMapping("/inserttea")
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws IOException{
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 request.setCharacterEncoding("utf-8");
		 ModelAndView modelAndView=new ModelAndView();
		 Teachar teahcer=new Teachar();
		  teahcer.setTid(request.getParameter("tid"));
		  teahcer.setTname(request.getParameter("tname"));
		  teahcer.setTkey(request.getParameter("tkey"));
		  teahcer.setTsex(request.getParameter("tsex"));
		  teahcer.setTage(Integer.valueOf(request.getParameter("tage")));
		  teahcer.setTmail(request.getParameter("tmail"));
		  teahcer.setTphone(request.getParameter("tphone"));
		boolean i= tea.insertTea(teahcer) ;
		PrintWriter out = response.getWriter();
		 if(i==true){
			 out.print("<script>alert('添加成功'),window.location.href='userstudentallclass.jsp'</script>");
		 }else{
			 out.print("<script>alert('添加失败'),window.location.href='userstudentallclass.jsp'</script>");
		 }
		 out.close();
		 modelAndView.setViewName("teacheradd");
		return modelAndView;
	}
}
