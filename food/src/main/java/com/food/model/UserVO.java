package com.food.model;

public class UserVO {
	private String user_email;
    private String user_id;
    private String user_pw;
    private String user_name;
    private String user_nick;
    private String user_zip;
    private String user_addr1;
    private String user_addr2;
    private String user_gender;
    private String user_birth;
    private String user_phone;
    private int auth_grp_cd;
    private String reg_dt;
    private String mod_dt;
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_nick() {
		return user_nick;
	}
	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}
	public String getUser_zip() {
		return user_zip;
	}
	public void setUser_zip(String user_zip) {
		this.user_zip = user_zip;
	}
	public String getUser_addr1() {
		return user_addr1;
	}
	public void setUser_addr1(String user_addr1) {
		this.user_addr1 = user_addr1;
	}
	public String getUser_addr2() {
		return user_addr2;
	}
	public void setUser_addr2(String user_addr2) {
		this.user_addr2 = user_addr2;
	}
	public String getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public int getAuth_grp_cd() {
		return auth_grp_cd;
	}
	public void setAuth_grp_cd(int auth_grp_cd) {
		this.auth_grp_cd = auth_grp_cd;
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
	
	
	@Override
	public String toString() {
		return "UserVO [user_email=" + user_email + ", user_id=" + user_id + ", user_pw=" + user_pw + ", user_name="
				+ user_name + ", user_nick=" + user_nick + ", user_zip=" + user_zip + ", user_addr1=" + user_addr1
				+ ", user_addr2=" + user_addr2 + ", user_gender=" + user_gender + ", user_birth=" + user_birth
				+ ", user_phone=" + user_phone + ", auth_grp_cd=" + auth_grp_cd + ", reg_dt=" + reg_dt + ", mod_dt="
				+ mod_dt + "]";
	}
    
    
	
}
