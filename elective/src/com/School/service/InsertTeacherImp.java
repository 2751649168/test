package com.School.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;
import com.School.vo.Teachar;
@Service
public class InsertTeacherImp implements IInsertTeacher{
@Autowired
Mapper mapper;
	@Override
	public boolean insertTea(Teachar teacher) {
		// TODO Auto-generated method stub
		boolean bool=true;
		List<Teachar> list=mapper.getTeacher();
		
		for (Teachar list1 : list) {
			if(list1.getTid().equals(teacher.getTid())){
				bool=false;
				break;
			}else{
				
				bool=mapper.insertTeacher(teacher);
				break;
			}
		}
		
		return bool;
	}

}
