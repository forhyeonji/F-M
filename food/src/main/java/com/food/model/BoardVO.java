package com.food.model;

public class BoardVO {

    private String title;
    private String content;

    private int bno;
    private String regdate;
    private int cnt;

    public int getBno() {
        return bno;
    }

    public void setBno(int bno) {
        this.bno = bno;
    }

    public String getRegdate() {
        return regdate;
    }

    public void setRegdate(String regdate) {
        this.regdate = regdate;
    }

    public int getCnt() {
        return cnt;
    }

    public void setCnt(int cnt) {
        this.cnt = cnt;
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

    @Override
    public String toString() {
        return "BoardVO{" +
                "title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", bno=" + bno +
                ", regdate='" + regdate + '\'' +
                ", cnt=" + cnt +
                '}';
    }
}
