package com.food.model;

import lombok.Data;

@Data
public class ReqCustomerVO {
    private int pageNum;
    private int pageSize;
    private String name;
}
