package com.School.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;
import com.School.vo.TeacherG;
@Service
public class TeaStuImp implements ITeaStu{
@Autowired
Mapper mapper;
	@Override
	public List<TeacherG> getKe(String tid) {
		// TODO Auto-generated method stub
		return mapper.seleteTea(tid);
	}

}
