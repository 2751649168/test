package com.School.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.School.vo.KeCheng;

public interface IKeChengGuanLi {
	public boolean deleC(String cid);
	public boolean updateC(KeCheng kecheng);
	public List<KeCheng> mohuchaxunC(@Param("mohu")String mohu);
}
