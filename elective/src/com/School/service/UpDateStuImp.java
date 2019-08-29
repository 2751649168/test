package com.School.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;
import com.School.vo.Stu;
@Service
public class UpDateStuImp implements IupDateStu{
@Autowired
Mapper mapper;
	
	@Override
	public boolean Upstu(Stu stu) {
		// TODO Auto-generated method stub
		
		return mapper.updateStu(stu);
	}

}
