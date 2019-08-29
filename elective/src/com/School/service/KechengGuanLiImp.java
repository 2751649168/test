package com.School.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;
import com.School.vo.KeCheng;
@Service
public class KechengGuanLiImp implements IKeChengGuanLi{
@Autowired
Mapper mapper;
	@Override
	public boolean deleC(String cid) {
		// TODO Auto-generated method stub
		return mapper.deleCourse(cid);
	}

	@Override
	public boolean updateC(KeCheng kecheng) {
		// TODO Auto-generated method stub
		
		return mapper.updateCourse(kecheng);
	}

	@Override
	public List<KeCheng> mohuchaxunC(String mohu) {
		// TODO Auto-generated method stub
		return mapper.mohuchaxunCourse(mohu);
	}

}
