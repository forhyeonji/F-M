package com.food.model;

public class NotiBoardVO {
    private int bno;
    private String title;
    private String content;
    private int cnt;
    private String user_id;
    private String reg_dt;
    
    
    
    
    
	public String getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	@Override
	public String toString() {
		return "NotiBoardVO [bno=" + bno + ", title=" + title + ", content=" + content + ", cnt=" + cnt + ", user_id="
				+ user_id + ", reg_dt=" + reg_dt + "]";
	}
	
    
}
