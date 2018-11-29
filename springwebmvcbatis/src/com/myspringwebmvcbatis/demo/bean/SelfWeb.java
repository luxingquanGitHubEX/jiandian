package com.myspringwebmvcbatis.demo.bean;

public class SelfWeb {
 private int uid;
 private String nickname;
 private int aid;
 private String atitle;
 private String atime;
 private String acontent;
 private int atid;
 private int acollect;
 private String asrc;
 private int aread;
public SelfWeb() {
	super();
}
public int getUid() {
	return uid;
}
public void setUid(int uid) {
	this.uid = uid;
}
public String getNickname() {
	return nickname;
}
public void setNickname(String nickname) {
	this.nickname = nickname;
}
public int getAid() {
	return aid;
}
public void setAid(int aid) {
	this.aid = aid;
}
public String getAtitle() {
	return atitle;
}
public void setAtitle(String atitle) {
	this.atitle = atitle;
}
public String getAtime() {
	return atime;
}
public void setAtime(String atime) {
	this.atime = atime;
}
public String getAcontent() {
	return acontent;
}
public void setAcontent(String acontent) {
	this.acontent = acontent;
}
public int getAtid() {
	return atid;
}
public void setAtid(int atid) {
	this.atid = atid;
}
public int getAcollect() {
	return acollect;
}
public void setAcollect(int acollect) {
	this.acollect = acollect;
}
public String getAsrc() {
	return asrc;
}
public void setAsrc(String asrc) {
	this.asrc = asrc;
}
public int getAread() {
	return aread;
}
public void setAread(int aread) {
	this.aread = aread;
}
@Override
public String toString() {
	return "SelfWeb [uid=" + uid + ", nickname=" + nickname + ", aid=" + aid + ", atitle=" + atitle + ", atime=" + atime
			+ ", acontent=" + acontent + ", atid=" + atid + ", acollect=" + acollect + ", asrc=" + asrc + ", aread="
			+ aread + "]";
}
 
}
