package com.food.model;

import lombok.Data;

@Data
public class CommunityReplyVO {
    private String context;
    private String reg_dt;
    private String mod_dt;
    private String user_id;
    private int bno;
    private int rno;
}
