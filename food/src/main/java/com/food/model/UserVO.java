package com.food.model;

public class UserVO {
    private String user_id;
    private String user_pw;
    private String user_name;
    private int auth_grp_cd;
    private String reg_dt;
    private String mod_dt;

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
        return "UserVO{" +
                "user_id='" + user_id + '\'' +
                ", user_pw='" + user_pw + '\'' +
                ", user_name='" + user_name + '\'' +
                ", auth_grp_cd=" + auth_grp_cd +
                ", reg_dt='" + reg_dt + '\'' +
                ", mod_dt='" + mod_dt + '\'' +
                '}';
    }
}
