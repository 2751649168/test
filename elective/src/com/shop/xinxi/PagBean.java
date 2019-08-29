package com.shop.xinxi;

import java.util.List;

public class PagBean<T> {
private int PageNum;//当前页
private int pagesize;//每页显示的数据条数；
private int totalRecord;//总的记录数
private int totalpage;//总页数，通过totalrecord和pagesize计算可以拿到
private int totalIndex;//开始引索，也就是sql语句中limit，
private List<T> list;//将要显示的数据放进集合内
private int start;
private int end;
public PagBean(int pagenum,int pagesize,int totalrecord){
	this.PageNum=pagenum;
	this.pagesize=pagesize;
	this.totalRecord=totalrecord;
	
	
	//算出总页数
	if(totalrecord%pagesize==0){
		this.totalpage=totalrecord/pagesize;
	}else{
		this.totalpage=totalrecord/pagesize+1;
	}
	this.totalIndex=(pagenum-1)*pagesize;
	
	this.start=totalIndex;
	this.end=(totalIndex)+3;
}

public int getStart() {
	return start;
}

public void setStart(int start) {
	this.start = start;
}

public int getEnd() {
	return end;
}

public void setEnd(int end) {
	this.end = end;
}

public int getPageNum() {
	return PageNum;
}
public PagBean() {
	super();
}
public PagBean(int pageNum, int pagesize, int totalRecord, int totalpage, int totalIndex, List<T> list) {
	super();
	PageNum = pageNum;
	this.pagesize = pagesize;
	this.totalRecord = totalRecord;
	this.totalpage = totalpage;
	this.totalIndex = totalIndex;
	this.list = list;
}
@Override
public String toString() {
	return "PagBean [PageNum=" + PageNum + ", pagesize=" + pagesize + ", totalRecord=" + totalRecord + ", totalpage="
			+ totalpage + ", totalIndex=" + totalIndex + ", list=" + list + "]";
}
public void setPageNum(int pageNum) {
	PageNum = pageNum;
}
public int getPagesize() {
	return pagesize;
}
public void setPagesize(int pagesize) {
	this.pagesize = pagesize;
}
public int getTotalRecord() {
	return totalRecord;
}
public void setTotalRecord(int totalRecord) {
	this.totalRecord = totalRecord;
}
public int getTotalpage() {
	return totalpage;
}
public void setTotalpage(int totalpage) {
	this.totalpage = totalpage;
}
public int getTotalIndex() {
	return totalIndex;
}
public void setTotalIndex(int totalIndex) {
	this.totalIndex = totalIndex;
}
public List<T> getList() {
	return list;
}
public void setList(List<T> list) {
	this.list = list;
}

}
