package com.School.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;

@Service
public class DeleteTeaImp implements IDeleteTea{
@Autowired
Mapper mapper;
	@Override
	public boolean DeleteaTeacher(String tid) {
		// TODO Auto-generated method stub
		return mapper.deleTea(tid);
	}

}
