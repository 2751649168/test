package com.School.vo;

public class Manager {
String mid;
String mname;
String mpass;
public String getMid() {
	return mid;
}
public void setMid(String mid) {
	this.mid = mid;
}
public String getMname() {
	return mname;
}
public void setMname(String mname) {
	this.mname = mname;
}
public String getMpass() {
	return mpass;
}
public void setMpass(String mpass) {
	this.mpass = mpass;
}
@Override
public String toString() {
	return "Manager [mid=" + mid + ", mname=" + mname + ", mpass=" + mpass + "]";
}
public Manager(String mid, String mname, String mpass) {
	super();
	this.mid = mid;
	this.mname = mname;
	this.mpass = mpass;
}
public Manager() {
	super();
}

}
