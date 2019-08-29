package com.School.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;

@Service
public class DeleteImp implements DeleteStuD{
@Autowired
Mapper mapper;
	@Override
	public Integer Delet(String sid, String cid) {
		// TODO Auto-generated method stub
		return mapper.delete(sid, cid);
	}

}
