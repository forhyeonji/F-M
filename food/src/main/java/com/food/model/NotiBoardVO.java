package com.food.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NotiBoardVO {
    private int bno;
    private String title;
    private String context;
    private int cnt;
    private String user_id;
    private String reg_dt;
    private boolean boldtitle;
    private String sep;
    private String subsep;
    private int user_tel;
    private boolean ans_check;
    
    
}
