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

import com.School.service.IStuIsert;
import com.School.vo.Stu;

@Controller
public class InsertStu {
	@Autowired
IStuIsert stuinsert;
	@RequestMapping("/insertStu")
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws IOException{
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 request.setCharacterEncoding("utf-8");
		 ModelAndView modelAndView=new ModelAndView();
		  Stu stu=new Stu();
	      stu.setSid(request.getParameter("sid"));
	      stu.setSname(request.getParameter("sname"));
	      stu.setSkey(request.getParameter("skey"));
	      stu.setSsex(request.getParameter("ssex"));
	      stu.setSage(Integer.valueOf(request.getParameter("sage")));
	      stu.setScredit(Float.valueOf(request.getParameter("scredit")));
	      stu.setSaddress(request.getParameter("saddress"));
	      stu.setSemail(request.getParameter("semail"));
	      stu.setSphone(request.getParameter("sphone"));
		boolean i= stuinsert.inStu(stu);
		 PrintWriter out = response.getWriter();
		 if(i==true){
			 out.print("<script>alert('添加成功'),window.location.href='userstudentallclass.jsp'</script>");
		 }else{
			 out.print("<script>alert('添加失败'),window.location.href='userstudentallclass.jsp'</script>");
		 }
		 out.close();
		 modelAndView.setViewName("studentadd");
		return modelAndView;
	}
}
