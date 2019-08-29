package com.School.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;

@Service
public class DeleteStuImp implements IDeleteStu{
@Autowired
Mapper mapper;
	@Override
	public boolean DeleteStu(String sid) {
		// TODO Auto-generated method stub
		return mapper.deleStu(sid);
	}

}
