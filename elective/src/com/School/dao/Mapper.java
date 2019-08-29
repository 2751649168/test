package com.School.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.School.vo.Elect;
import com.School.vo.KeCheng;
import com.School.vo.Manager;
import com.School.vo.Stu;
import com.School.vo.StuXinxi;
import com.School.vo.Teachar;
import com.School.vo.TeacherG;

public interface Mapper {
    
    public StuXinxi loginS(@Param("username")String username,@Param("password")String password,@Param("Zhiye")String Zhiye);
    public Integer UpdateS(@Param("username")String username,@Param("password")String password,@Param("password1")String password1);
    public List<KeCheng> getmust(@Param("sid")String sid);
    public List<KeCheng> getxuanxiu();
    public Integer setXuanxiu(@Param("sid")String sid,@Param("cid")String cid);
    public Elect getElect(@Param("sid")String sid,@Param("cid")String cid);
    public List<KeCheng> getAllK(@Param("sid")String sid);
    public Integer delete(@Param("sid")String sid,@Param("cid")String cid);
    public Teachar logint(@Param("username")String username,@Param("password")String password,@Param("Zhiye")String Zhiye);
    public Integer UpdateTea(@Param("username")String username,@Param("password")String password,@Param("password1")String password1);
    public List<TeacherG> seleteTea(@Param("tid")String tid);
    public List<TeacherG> seleteall(@Param("tid")String tid);
    public Integer DaFen(@Param("sid")String sid,@Param("cid")String cid,@Param("score")String score);
	public Manager loginm(@Param("username")String username,@Param("password")String password,@Param("Zhiye")String Zhiye);
	public List<TeacherG> seleteXuanXiu(@Param("tid")String tid);
	public List<Stu> seletpage(@Param("pagenum")Integer pagenum,@Param("pagesize")Integer pagesize);
	public List<Stu> seletStuAll();
	public List<Stu> mohucx(@Param("mohu")String mohu);
	public boolean deleStu(@Param("sid")String sid);
	public boolean updateStu(Stu stu);
	public boolean insertStu(Stu stu);
	public List<Teachar> getTeacherpage(@Param("pagenum")Integer pagenum,@Param("pagesize")Integer pagesize);
	public List<Teachar> getTeacher();
	public List<Teachar> teachermohuchaxun(@Param("mohu")String mohu);
	public boolean deleTea(@Param("tid")String tid);
	public boolean updateTeacher(Teachar teacher);
	public boolean insertTeacher(Teachar teacher);
	public List<KeCheng> selectkecheng(@Param("pagenum")Integer pagenum,@Param("pagesize")Integer pagesize);
	public List<KeCheng> slectKeAll();
	public boolean deleCourse(@Param("cid")String cid);
	public boolean updateCourse(KeCheng kecheng);
	public List<KeCheng> mohuchaxunCourse(@Param("mohu")String mohu);
	public boolean Courseinsert(KeCheng kecheng);
}
