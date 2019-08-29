package com.School.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;
import com.School.vo.Teachar;
@Service
public class TeacherUpImp implements ITeacherUp{
@Autowired
Mapper mapper;
	@Override
	public boolean updateteacher(Teachar teacher) {
		// TODO Auto-generated method stub

		return mapper.updateTeacher(teacher);
	}

}
