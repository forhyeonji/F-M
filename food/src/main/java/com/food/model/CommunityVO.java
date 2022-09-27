package com.food.model;

import lombok.Data;

@Data
public class CommunityVO {
    private int bno;
    private String title;
    private String context;
    private String reg_dt;
    private int cnt;
    private String user_id;
    private int vote;
    private String menus;
}