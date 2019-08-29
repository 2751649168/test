package com.School.controlle;


import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.School.service.IStuBiXiu;
import com.School.vo.KeCheng;
import com.School.vo.StuXinxi;

@Controller
public class StuBiXiu {
	@Autowired
	IStuBiXiu biXiu;
	
	
	@RequestMapping("/must")
	 public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException{
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 request.setCharacterEncoding("utf-8");
         ModelAndView modelAndView=new ModelAndView();
 		 HttpSession  session= request.getSession();
 		 StuXinxi stu= (StuXinxi) session.getAttribute("stu");
         List<KeCheng> obj= biXiu.getmust(stu.getSid());
 		 for(int i=0;i<obj.size();i++){
 			 System.out.println(obj.get(i));
 			 System.out.println(obj.get(i).getTeacher().getTname());  
 			 
 		 }
 		session.setAttribute("kecheng", obj);
 		modelAndView.setViewName("userstudentmustclass");
 		modelAndView.addObject("list",obj);
	    return modelAndView;

}
}