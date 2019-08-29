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

import com.School.service.ITeamhcx;
import com.School.vo.Teachar;
@Controller
public class Teamhcx {
	@Autowired
	ITeamhcx mhcx;
	@RequestMapping("/Teachermohu")
	public ModelAndView mohuchaxun(HttpServletRequest request, HttpServletResponse response) throws IOException{
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 request.setCharacterEncoding("utf-8");
	   ModelAndView modelAndView=new ModelAndView();
	   HttpSession  session= request.getSession();
	   String mohu=request.getParameter("tname");
		List<Teachar> Teacher=mhcx.mohu(mohu);
		session.setAttribute("Teacher", Teacher);
		modelAndView.setViewName("teacherlistmhcx");
		return modelAndView.addObject("lists",Teacher);
	}
}
