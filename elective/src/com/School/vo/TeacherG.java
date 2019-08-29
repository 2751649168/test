package com.School.vo;

import java.util.List;

public class TeacherG {
	String	cid;
	String tid;
	String cname;
	String ctype;
	float ccredit;
	int cmax;
	String cnote;
	int cprecid;
   List<Stu> stu;
public String getCid() {
	return cid;
}
public void setCid(String cid) {
	this.cid = cid;
}
public String getTid() {
	return tid;
}
public void setTid(String tid) {
	this.tid = tid;
}
public String getCname() {
	return cname;
}
public void setCname(String cname) {
	this.cname = cname;
}
public String getCtype() {
	return ctype;
}
public void setCtype(String ctype) {
	this.ctype = ctype;
}
public float getCcredit() {
	return ccredit;
}
public void setCcredit(float ccredit) {
	this.ccredit = ccredit;
}
public int getCmax() {
	return cmax;
}
public void setCmax(int cmax) {
	this.cmax = cmax;
}
public String getCnote() {
	return cnote;
}
public void setCnote(String cnote) {
	this.cnote = cnote;
}
public int getCprecid() {
	return cprecid;
}
public void setCprecid(int cprecid) {
	this.cprecid = cprecid;
}
public List<Stu> getStu() {
	return stu;
}
public void setStu(List<Stu> stu) {
	this.stu = stu;
}
@Override
public String toString() {
	return "TeacherG [cid=" + cid + ", tid=" + tid + ", cname=" + cname + ", ctype=" + ctype + ", ccredit=" + ccredit
			+ ", cmax=" + cmax + ", cnote=" + cnote + ", cprecid=" + cprecid + ", student=" + stu + "]";
}
public TeacherG(String cid, String tid, String cname, String ctype, float ccredit, int cmax, String cnote, int cprecid,
		List<Stu> stu) {
	super();
	this.cid = cid;
	this.tid = tid;
	this.cname = cname;
	this.ctype = ctype;
	this.ccredit = ccredit;
	this.cmax = cmax;
	this.cnote = cnote;
	this.cprecid = cprecid;
	this.stu = stu;
}
public TeacherG() {
	super();
}
    
	
}
