package com.School.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.School.dao.Mapper;
import com.School.vo.Stu;
import com.School.vo.Teachar;
import com.shop.xinxi.PagBean;
@Service
public class TeacaherPageImp implements TeacherPage{
@Autowired
Mapper mapper;

@Override
public PagBean getTeapage(Integer pagenum,Integer pagesize) {
	// TODO Auto-generated method stub
	List<Teachar> list=null;//用imp内的取得
	PagBean<Teachar> page=null;
	list=mapper.getTeacher();//调用Imp类来调用imp内的方法	   
 	int totalrecord=list.size();
	   //创建pagebean，当前页 每页条数，总条数
 	   //下列与上列并无关联关系
 	page=new PagBean( pagenum,pagesize,totalrecord);
 	   //调用pagean的求出下一页开始值；
 	Integer startidex=page.getTotalIndex();
 	   //拿到imp内分页数据的方法 开始做分页处理


    page.setList(mapper.getTeacherpage(startidex, pagesize));
	return page;
}

	

}
