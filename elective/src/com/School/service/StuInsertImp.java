package com.School.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;
import com.School.vo.KeCheng;
import com.School.vo.Stu;
@Service
public class StuInsertImp implements IStuIsert{
@Autowired
Mapper mapper;
	@Override
	public boolean inStu(Stu stu) {
		// TODO Auto-generated method stub
		List<Stu> stus=mapper.seletStuAll();
		boolean bool=false;
		
		for (Stu stu2 : stus) {
			if(stu2.getSid().equals(stu.getSid())){
			    bool=false;
			    break;   
			}else{
				bool=mapper.insertStu(stu);
				break;
			}
		}
		List<KeCheng> list=mapper.slectKeAll();
		for (KeCheng keCheng : list) {
			if(keCheng.getCtype().equals("必修课")){
				Integer boo=mapper.setXuanxiu(stu.getSid(),keCheng.getCid());
				}
		}
		return bool;
	}

}
