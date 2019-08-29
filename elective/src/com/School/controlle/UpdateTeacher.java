package com.School.controlle;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.School.service.ITeacherUp;
import com.School.vo.Stu;
import com.School.vo.Teachar;
@Controller
public class UpdateTeacher {
	@Autowired
	ITeacherUp teaup;
	@RequestMapping("/updateTeacher")
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws IOException{
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 request.setCharacterEncoding("utf-8");
		 ModelAndView modelAndView=new ModelAndView();
		  Teachar Teahcer=new Teachar();
		  Teahcer.setTid(request.getParameter("tid"));
		  Teahcer.setTname(request.getParameter("tname"));
		  Teahcer.setTkey(request.getParameter("tkey"));
		  Teahcer.setTsex(request.getParameter("tsex"));
		  Teahcer.setTage(Integer.valueOf(request.getParameter("tage")));
		  Teahcer.setTmail(request.getParameter("tmail"));
		  Teahcer.setTphone(request.getParameter("tphone"));
		boolean i= teaup.updateteacher(Teahcer);
		 PrintWriter out = response.getWriter();
		 if(i==true){
			 out.print("<script>alert('修改成功'),window.location.href='userstudentallclass.jsp'</script>");
		 }else{
			 out.print("<script>alert('修改失败'),window.location.href='userstudentallclass.jsp'</script>");
		 }
		 out.close();
	  return modelAndView;
	}
}
