package com.School.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;
import com.School.vo.Teachar;

@Service
public class TeamhcxImp implements ITeamhcx{
@Autowired
Mapper mapper;

@Override
public List<Teachar> mohu(String mohu) {
	// TODO Auto-generated method stub
	return mapper.teachermohuchaxun(mohu);
}

}
