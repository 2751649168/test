package com.School.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;

@Service
public class DaFenImp implements IDaFen{
@Autowired
Mapper mapper;
	@Override
	public Integer TeaDaFen(String sid, String cid, String score) {
		// TODO Auto-generated method stub
		return mapper.DaFen(sid, cid, score);
	}

}
