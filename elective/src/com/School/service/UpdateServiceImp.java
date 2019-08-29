package com.School.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;

@Service
public class UpdateServiceImp implements UpdateService{
    @Autowired
    public Mapper mapper;
	@Override
	public Integer UpdateService(String username,String password,String password1) {
		
		
		return mapper.UpdateS(username, password, password1);
		
		
		
	}

}
