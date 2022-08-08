package com.food.model;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class CustomerVO {
    private String id;
    private String password;
    private String name;
    private int age;
}
