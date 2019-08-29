package com.School.vo;

public class Stu {
	String sid;
    String skey;
    String sname;
    String ssex;
    int sage;
    float scredit;
    String saddress;
    String 	sphone;
    String semail;
	Elect elect;
	public int getZongshu() {
		return zongshu;
	}
	public void setZongshu(int zongshu) {
		this.zongshu = zongshu;
	}
	int ZongYe;
	int zongshu;
	public int getZongYe() {
		return ZongYe;
	}
	public void setZongYe(int zongYe) {
		ZongYe = zongYe;
	}
	public Stu() {
		super();
	}
	public Stu(String sid, String skey, String sname, String ssex, int sage, float scredit, String saddress,
			String sphone, String semail, Elect elect) {
		super();
		this.sid = sid;
		this.skey = skey;
		this.sname = sname;
		this.ssex = ssex;
		this.sage = sage;
		this.scredit = scredit;
		this.saddress = saddress;
		this.sphone = sphone;
		this.semail = semail;
		this.elect = elect;
	}
	@Override
	public String toString() {
		return "Stu [sid=" + sid + ", skey=" + skey + ", sname=" + sname + ", ssex=" + ssex + ", sage=" + sage
				+ ", scredit=" + scredit + ", saddress=" + saddress + ", sphone=" + sphone + ", semail=" + semail
				+ ", elect=" + elect + "]";
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getSkey() {
		return skey;
	}
	public void setSkey(String skey) {
		this.skey = skey;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSsex() {
		return ssex;
	}
	public void setSsex(String ssex) {
		this.ssex = ssex;
	}
	public int getSage() {
		return sage;
	}
	public void setSage(int sage) {
		this.sage = sage;
	}
	public float getScredit() {
		return scredit;
	}
	public void setScredit(float scredit) {
		this.scredit = scredit;
	}
	public String getSaddress() {
		return saddress;
	}
	public void setSaddress(String saddress) {
		this.saddress = saddress;
	}
	public String getSphone() {
		return sphone;
	}
	public void setSphone(String sphone) {
		this.sphone = sphone;
	}
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	public Elect getElect() {
		return elect;
	}
	public void setElect(Elect elect) {
		this.elect = elect;
	}
}
