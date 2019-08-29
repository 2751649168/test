package com.School.controlle;

import java.io.IOException;
import java.io.PrintWriter;
/*import java.io.PrintWriter;*/
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.School.service.DeleteStuD;
import com.School.service.StuGetAllC;
import com.School.vo.KeCheng;
import com.School.vo.StuXinxi;
@Controller
public class DeleteC {
	@Autowired
	StuGetAllC stugetall;
	@Autowired
    DeleteStuD delete;
	@RequestMapping("/delete")
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws IOException{
	 response.setCharacterEncoding("utf-8");
	 response.setContentType("text/html;charset=utf-8");
	 request.setCharacterEncoding("utf-8");
/*     PrintWriter out;*/
    /* out=response.getWriter();*/
	 HttpSession  session= request.getSession();
	 StuXinxi stu= (StuXinxi) session.getAttribute("stu");
	String cid= request.getParameter("Dcid");
	 Integer i=delete.Delet(stu.getSid(), cid);
	 PrintWriter out = response.getWriter();
	
    
	List<KeCheng> kecheng=stugetall.getAll(stu.getSid());
	ModelAndView modelAndView=new ModelAndView();
	session.setAttribute("list", kecheng);
	modelAndView.addObject("lists",kecheng);
	 if(i<0){
		 out.print("<script>alert('删除课程成功'),window.location.href='userstudentallclass.jsp'</script>");
	 }else{
		 out.print("<script>alert('删除课程成功'),window.location.href='userstudentallclass.jsp'</script>");
	 }
	 out.close();
   return modelAndView;
}
}
