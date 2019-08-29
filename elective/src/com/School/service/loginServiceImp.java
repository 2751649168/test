package com.School.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;
import com.School.vo.Manager;
import com.School.vo.StuXinxi;
import com.School.vo.Teachar;
@Service
public class loginServiceImp implements loginService{
	@Autowired
    Mapper mapper;
	@Override
	public <T> T login(String username, String password, String Zhiye) {
		T obj = null;
		if(Zhiye.equals("student")){
		StuXinxi stu= mapper.loginS(username, password, Zhiye);
		obj=(T) stu;
		}else if(Zhiye.equals("teacher")){
			
		Teachar tea=mapper.logint(username, password, Zhiye);
		obj= (T) tea;
		}else if(Zhiye.equals("manager")){
	    Manager man=mapper.loginm(username, password, Zhiye);
	    obj=(T) man;
		}

		return obj;
		
	}
	 
}
