package com.School.controlle;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.School.service.IDaFen;

@Controller
public class DaFen {
@Autowired
IDaFen dafen;
@RequestMapping("/DaFen")
public ModelAndView insert(HttpServletRequest request, HttpServletResponse response){
	   
	   response.setCharacterEncoding("utf-8");
	   response.setContentType("text/html;charset=utf-8");
	   String sid=request.getParameter("sid");
       String cid=request.getParameter("cid");
       String score=request.getParameter("scores");
       
       Integer i=dafen.TeaDaFen(sid, cid, score);
       ModelAndView modelAndView=new ModelAndView();
       int a=i;
       modelAndView.addObject("list",a);
       PrintWriter out;
	try {
		out = response.getWriter();
		if(a==0){
		 out.print("<script>alert('打分失败'),window.location.href='userteachermustclassScore.jsp'</script>");
		
		}else{
            out.print("<script>alert('打分成功'),window.location.href='userteachermustclassScore.jsp'</script>");
		}
		
		out.close();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
  return modelAndView;
}
}
