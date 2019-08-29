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


import com.School.service.IStuXuanXiu;
import com.School.vo.KeCheng;


@Controller
public class StuXuanXi {
	@Autowired
	IStuXuanXiu stu;
	
	
	@RequestMapping("/XuanXiu")
	 public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException{
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 request.setCharacterEncoding("utf-8");
         ModelAndView modelAndView=new ModelAndView();
 		 HttpSession  session= request.getSession();
         List<KeCheng> obj= stu.getxuanxiu();
 		 for(int i=0;i<obj.size();i++){
 			 System.out.println(obj.get(i));
 			 System.out.println(obj.get(i).getTeacher().getTname());  
 		 }
 		session.setAttribute("xuanxiu", obj);
 		modelAndView.setViewName("userstudentxuanxiuclass");
 		modelAndView.addObject("re",obj);
	    return modelAndView;

}
}
