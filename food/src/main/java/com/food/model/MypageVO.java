package com.food.model;

public class MypageVO {
	//tb_community
	private int bno;		//글번호
	private String title;	//제목
	private String context;	//내용
	private String reg_dt;	//작성일자
	private String mod_dt;	//수정일자
	private int cnt;		//조회수
	private String user_id;	//작성자
	
	//getter&setter
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}
	public String getMod_dt() {
		return mod_dt;
	}
	public void setMod_dt(String mod_dt) {
		this.mod_dt = mod_dt;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	//toString()
	@Override
	public String toString() {
		return "MypageVO [bno=" + bno + ", title=" + title + ", context=" + context + ", reg_dt=" + reg_dt + ", mod_dt="
				+ mod_dt + ", cnt=" + cnt + ", user_id=" + user_id + "]";
	}


}
