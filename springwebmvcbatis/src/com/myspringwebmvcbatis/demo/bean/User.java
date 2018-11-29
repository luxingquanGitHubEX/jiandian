package com.myspringwebmvcbatis.demo.bean;

import java.io.Serializable;

public class User implements Serializable{
	private int uid;
	private String nickname;
	private String sex;
	private String job;
	private String city;
	private String birthday;
	private String homepage;
	private String self_introduce;
	private String pic;
	private String email;
	private String password;
	private String wechat;
	private String sina;
	private String qq;
	public User() {
		super();
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", nickname=" + nickname + ", sex=" + sex + ", job=" + job + ", city=" + city
				+ ", birthday=" + birthday + ", homepage=" + homepage + ", self_introduce=" + self_introduce + ", pic="
				+ pic + ", email=" + email + ", password=" + password + ", wechat=" + wechat + ", sina=" + sina
				+ ", qq=" + qq + "]";
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getSelf_introduce() {
		return self_introduce;
	}
	public void setSelf_introduce(String self_introduce) {
		this.self_introduce = self_introduce;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getWechat() {
		return wechat;
	}
	public void setWechat(String wechat) {
		this.wechat = wechat;
	}
	public String getSina() {
		return sina;
	}
	public void setSina(String sina) {
		this.sina = sina;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	
}
