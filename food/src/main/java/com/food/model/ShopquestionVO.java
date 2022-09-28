package com.food.model;

public class ShopquestionVO {
	private int prodnum; 
	private int cnt; 
	private String NAME; 
	private String text; 
	private String date; 
	private String user_id; 
	private String context;
	private boolean check;
	
	
	public int getProdnum() {
		return prodnum;
	}
	public void setProdnum(int prodnum) {
		this.prodnum = prodnum;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	
	public boolean isCheck() {
		return check;
	}
	public void setCheck(boolean check) {
		this.check = check;
	}
	@Override
	public String toString() {
		return "ShopquestionVO [prodnum=" + prodnum + ", cnt=" + cnt + ", NAME=" + NAME + ", text=" + text + ", date="
				+ date + ", user_id=" + user_id + ", context=" + context + ", check=" + check + "]";
	} 
	
}
