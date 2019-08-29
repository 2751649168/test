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

import com.School.service.MoHuPage;
import com.School.vo.Stu;
import com.shop.xinxi.PagBean;

@Controller
public class MoHuChaXun {
@Autowired
MoHuPage page;
@RequestMapping("/mohuchaxun")
public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws IOException{
	 response.setCharacterEncoding("utf-8");
	 response.setContentType("text/html;charset=utf-8");
	 request.setCharacterEncoding("utf-8");
   ModelAndView modelAndView=new ModelAndView();
   HttpSession  session= request.getSession();
   String mohu=request.getParameter("st");
	List<Stu> kecheng=page.mohupage(mohu);
	session.setAttribute("pages", kecheng);
	modelAndView.setViewName("studentlistmhcx");
	return modelAndView.addObject("lists",kecheng);
}
}
