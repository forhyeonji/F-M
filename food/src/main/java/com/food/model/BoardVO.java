package com.food.model;

public class BoardVO {
    private int bno;
    private String title;
    private String context;
    private String mod_dt;
    private int cnt;
    private String user_id;

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

    @Override
    public String toString() {
        return "BoardVO{" +
                "bno=" + bno +
                ", title='" + title + '\'' +
                ", context='" + context + '\'' +
                ", mod_dt='" + mod_dt + '\'' +
                ", cnt=" + cnt +
                ", user_id='" + user_id + '\'' +
                '}';
    }
}