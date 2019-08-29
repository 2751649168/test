package com.School.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;
import com.School.vo.KeCheng;
import com.School.vo.Teachar;
@Service
public class KeChengInsertImp implements IKeChenginsert{
@Autowired
Mapper mapper;
	@Override
	public boolean KeChengTianJia(KeCheng kecheng) {
		// TODO Auto-generated method stub
		List<KeCheng> list=mapper.slectKeAll();
		boolean bool=false;
		for (KeCheng cname : list) {
			if(cname.getCid().equals(kecheng.getCid())){
				bool=false;
				break;
			}else{
				bool=mapper.Courseinsert(kecheng);
				break;
			}
		}
		
		return bool;
	}

}
