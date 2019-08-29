package com.School.vo;

import java.util.List;

public class Teachar {
 String tid;
 String tkey;
 String tname;
 String tsex;
 int tage;
 String tphone;
 String tmail;
 List<StuXinxi> stu;
public String getTid() {
	return tid;
}
public void setTid(String tid) {
	this.tid = tid;
}
public String getTkey() {
	return tkey;
}
public void setTkey(String tkey) {
	this.tkey = tkey;
}
public String getTname() {
	return tname;
}
public void setTname(String tname) {
	this.tname = tname;
}
public String getTsex() {
	return tsex;
}
public void setTsex(String tsex) {
	this.tsex = tsex;
}
public int getTage() {
	return tage;
}
public void setTage(int tage) {
	this.tage = tage;
}
public String getTphone() {
	return tphone;
}
public void setTphone(String tphone) {
	this.tphone = tphone;
}
public String getTmail() {
	return tmail;
}
public void setTmail(String tmail) {
	this.tmail = tmail;
}
public List<StuXinxi> getStu() {
	return stu;
}
public void setStu(List<StuXinxi> stu) {
	this.stu = stu;
}
@Override
public String toString() {
	return "Teachar [tid=" + tid + ", tkey=" + tkey + ", tname=" + tname + ", tsex=" + tsex + ", tage=" + tage
			+ ", tphone=" + tphone + ", tmail=" + tmail + ", stu=" + stu + "]";
}
public Teachar(String tid, String tkey, String tname, String tsex, int tage, String tphone, String tmail,
		List<StuXinxi> stu) {
	super();
	this.tid = tid;
	this.tkey = tkey;
	this.tname = tname;
	this.tsex = tsex;
	this.tage = tage;
	this.tphone = tphone;
	this.tmail = tmail;
	this.stu = stu;
}
public Teachar() {
	super();
}
 
}