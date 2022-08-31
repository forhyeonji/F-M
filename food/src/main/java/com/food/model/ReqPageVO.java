package com.food.model;

import lombok.Data;

/**
 * List Page Request
 * @author kimseongmin0301
 */
@Data
public class ReqPageVO {
    private int page;

    private int size;

    private String title;
}