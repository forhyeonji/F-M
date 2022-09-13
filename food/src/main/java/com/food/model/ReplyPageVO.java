package com.food.model;

import lombok.Data;

/**
 * reply page
 * @author kimseongmin0301
 */
@Data
public class ReplyPageVO {
    private int page;

    private int size;

    private String context;

    private int bno;
}
