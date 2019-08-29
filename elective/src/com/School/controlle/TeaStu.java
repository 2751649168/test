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

import com.School.service.ITeaStu;
import com.School.vo.KeCheng;
import com.School.vo.StuXinxi;
import com.School.vo.Teachar;
import com.School.vo.TeacherG;

@Controller
public class TeaStu {
	@Autowired
	ITeaStu Teastu;
	@RequestMapping("/bixiu")
	public ModelAndView insert(HttpServletRequest request, HttpServletResponse response) throws IOException{
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 request.setCharacterEncoding("utf-8");
	    ModelAndView modelAndView=new ModelAndView();
	    HttpSession  session= request.getSession();
		Teachar stu=  (Teachar) session.getAttribute("TEA");
		List<TeacherG>  kecheng=Teastu.getKe(stu.getTid());
		for(int i=0;i<kecheng.size();i++){
			System.out.println(kecheng.get(i).getCname());
			System.out.println(kecheng.get(i).getStu());
			
		}
		 
		
		session.setAttribute("kecheng", kecheng);
		modelAndView.setViewName("userteachermustclassScore");
		modelAndView.addObject("lists",kecheng);
	   return modelAndView;
	}
}
