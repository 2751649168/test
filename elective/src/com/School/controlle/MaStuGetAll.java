package com.School.controlle;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.School.service.IMaStu;
import com.School.vo.KeCheng;
import com.School.vo.Stu;
import com.School.vo.StuXinxi;
import com.shop.xinxi.PagBean;

@Controller
public class MaStuGetAll {
@Autowired
IMaStu mastu;


@RequestMapping("/PageNum")
public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws IOException{
	 response.setCharacterEncoding("utf-8");
	 response.setContentType("text/html;charset=utf-8");
	 request.setCharacterEncoding("utf-8");
   ModelAndView modelAndView=new ModelAndView();
   HttpSession  session= request.getSession();
   Integer pagenum=Integer.valueOf(request.getParameter("pagenum"));
	Integer pagesize=3;
	PagBean kecheng=mastu.MaStuPage(pagenum, pagesize);
	session.setAttribute("zongye", kecheng.getTotalpage());
	session.setAttribute("zongshu", kecheng.getTotalRecord());
	session.setAttribute("end", kecheng.getEnd());
	session.setAttribute("Start", kecheng.getStart());
	session.setAttribute("page", kecheng.getList());
	session.setAttribute("pagenum", pagenum);
	modelAndView.setViewName("studentlist");
	modelAndView.addObject("lists",kecheng);
  return modelAndView;
}
}
