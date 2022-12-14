package com.food.model;

public class ShopquestionVO {
	private int bno;	//게시글 번호
	private int prodnum;  	//제품번호
	private String NAME; 	//제품명
	private String today; 	//작성일자
	private String user_id; //작성자
	private String context;	//내용
	private boolean chack;	//답변확인
	private String title;	//제목
	private String answer;	//관리자 답변
	
	
	public int getProdnum() {
		return prodnum;
	}
	public void setProdnum(int prodnum) {
		this.prodnum = prodnum;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String gettoday() {
		return today;
	}
	public void settoday(String today) {
		this.today = today;
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
	
	
	
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public boolean isChack() {
		return chack;
	}
	public void setChack(boolean chack) {
		this.chack = chack;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "ShopquestionVO [bno=" + bno + ", prodnum=" + prodnum + ", NAME=" + NAME + ", today=" + today
				+ ", user_id=" + user_id + ", context=" + context + ", chack=" + chack + ", title=" + title
				+ ", answer=" + answer + "]";
	} 
	
}
