package com.School.vo;

public class Elect {
 String sid;
 String cid;
 double score;
public String getSid() {
	return sid;
}
public void setSid(String sid) {
	this.sid = sid;
}
public String getCid() {
	return cid;
}
public void setCid(String cid) {
	this.cid = cid;
}
public double getScore() {
	return score;
}
public void setScore(double score) {
	this.score = score;
}
@Override
public String toString() {
	return "Elect [sid=" + sid + ", cid=" + cid + ", score=" + score + "]";
}
public Elect(String sid, String cid, double score) {
	super();
	this.sid = sid;
	this.cid = cid;
	this.score = score;
}
public Elect() {
	super();
}
 
}