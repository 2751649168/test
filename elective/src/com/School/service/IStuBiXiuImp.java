package com.School.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;
import com.School.vo.KeCheng;

@Service
public class IStuBiXiuImp implements IStuBiXiu{
	@Autowired
	Mapper mapper;

	@Override
	public List<KeCheng> getmust(String sid) {
		// TODO Auto-generated method stub
		return mapper.getmust(sid);
	}
	

}
