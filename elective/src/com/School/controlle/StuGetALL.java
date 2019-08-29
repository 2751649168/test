
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

import com.School.service.StuGetAllC;
import com.School.vo.Elect;
import com.School.vo.KeCheng;
import com.School.vo.StuXinxi;

@Controller
public class StuGetALL {
@Autowired
StuGetAllC stugetall;
@RequestMapping("/getalls")
public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws IOException{
	 response.setCharacterEncoding("utf-8");
	 response.setContentType("text/html;charset=utf-8");
	 request.setCharacterEncoding("utf-8");
    ModelAndView modelAndView=new ModelAndView();
    HttpSession  session= request.getSession();
	StuXinxi stu= (StuXinxi) session.getAttribute("stu");
	List<KeCheng> kecheng=stugetall.getAll(stu.getSid());
	for(int i=0;i<kecheng.size();i++){
		System.out.println(kecheng.get(i).getElect().getScore());
	}
	 
	
	session.setAttribute("list", kecheng);
	modelAndView.setViewName("userstudentallclass");
	modelAndView.addObject("lists",kecheng);
   return modelAndView;
}
}
