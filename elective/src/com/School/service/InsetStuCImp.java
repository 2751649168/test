package com.School.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;
import com.School.vo.Elect;

@Service
public class InsetStuCImp implements IIsertStuC{
    @Autowired
    Mapper mapper;
	@Override
	public Integer setStuc(String sid,String cid) {
		// TODO Auto-generated method stub
		return mapper.setXuanxiu(sid, cid);
	}
	@Override
	public Elect getElect(String sid, String cid) {
		// TODO Auto-generated method stub
		return mapper.getElect(sid, cid);
	}

}
