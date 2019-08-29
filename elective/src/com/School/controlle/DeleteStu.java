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

import com.School.service.IDeleteStu;
import com.School.service.IMaStu;
import com.School.vo.KeCheng;
import com.School.vo.StuXinxi;
import com.shop.xinxi.PagBean;

@Controller
public class DeleteStu {
@Autowired
IDeleteStu deletestu;
@Autowired
IMaStu mastu;
@RequestMapping("/deletestu")
public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws IOException{
 response.setCharacterEncoding("utf-8");
 response.setContentType("text/html;charset=utf-8");
 request.setCharacterEncoding("utf-8");
/*     PrintWriter out;*/
/* out=response.getWriter();*/
 HttpSession  session= request.getSession();
String sid= request.getParameter("sid");
 boolean i=deletestu.DeleteStu(sid);
 PrintWriter out = response.getWriter();
 ModelAndView modelAndView=new ModelAndView();
 if(i=true){
	 out.print("<script>alert('删除成功')</script>");
 }else{
	 out.print("<script>alert('删除成功')</script>");
 }
 Integer pagenum=Integer.valueOf(request.getParameter("sid"));
	Integer pagesize=3;
	if(pagenum!=0){
		pagenum=1;
	}
	PagBean kecheng=mastu.MaStuPage(pagenum, pagesize);
	
	session.setAttribute("zongye", kecheng.getTotalpage());
	session.setAttribute("zongshu", kecheng.getTotalRecord());
	session.setAttribute("end", kecheng.getEnd());
	session.setAttribute("Start", kecheng.getStart());
	session.setAttribute("page", kecheng.getList());
	session.setAttribute("pagenum", pagenum);
	modelAndView.setViewName("studentlist");
	modelAndView.addObject("lists",kecheng);
	 
 out.close();
return modelAndView;
}
}
