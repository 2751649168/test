package com.School.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;
import com.School.vo.KeCheng;

@Service
public  class StuGetAllImp implements StuGetAllC{
    @Autowired
    Mapper mapper;
	@Override
	public List<KeCheng> getAll(String sid) {
		// TODO Auto-generated method stub
		return mapper.getAllK(sid);
	}
}
