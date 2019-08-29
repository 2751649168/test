package com.School.controlle;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.School.service.IIsertStuC;
import com.School.vo.Elect;
import com.School.vo.StuXinxi;

@Controller
public class InsetStuC {
   @Autowired
   IIsertStuC set;
   @RequestMapping("/inset")
	 public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws IOException{
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 request.setCharacterEncoding("utf-8");
         ModelAndView modelAndView=new ModelAndView();
         PrintWriter out = response.getWriter();
		 HttpSession  session= request.getSession();
		 StuXinxi stu= (StuXinxi) session.getAttribute("stu");
		String cid= request.getParameter("cid");
		Elect obj=set.getElect(stu.getSid(), cid);
        int i=0;
		if(obj==null){
			i= set.setStuc(stu.getSid(), cid);
			if(i<0){
				out.print("<script>alert('选课失败'),window.location.href='userstudentxuanxiuclass.jsp'</script>");
			}else{
				out.print("<script>alert('选课成功'),window.location.href='userstudentxuanxiuclass.jsp'</script>");
			}
		}else{
			out.print("<script>alert('您已选择该课程'),window.location.href='userstudentxuanxiuclass.jsp'</script>");
		}
		out.close();
		session.setAttribute("kecheng", obj);
		modelAndView.addObject("list",obj);
	    return modelAndView;

}
}
