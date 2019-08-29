package com.School.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;
import com.School.vo.Stu;
import com.shop.xinxi.PagBean;

@Service
public class MoHuChaXunImp implements MoHuPage{
@Autowired
Mapper mapper;


@Override
public List<Stu> mohupage(String mohu) {

	return mapper.mohucx(mohu);
}


}
