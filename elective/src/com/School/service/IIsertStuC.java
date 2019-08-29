package com.School.service;

import com.School.vo.Elect;

public interface IIsertStuC {
    public Integer setStuc(String sid,String cid);
    public Elect getElect(String sid,String cid);
}
