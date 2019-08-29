package com.School.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;

@Service
public class TeaUpDateImp implements ITeaUpDate{
@Autowired
Mapper mapper;
	@Override
	public Integer upDateTea(String username,String password,String password1) {
		// TODO Auto-generated method stub
		return  mapper.UpdateTea(username, password, password1);
	}
}
