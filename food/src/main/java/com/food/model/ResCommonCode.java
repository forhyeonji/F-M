package com.food.model;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ResCommonCode {
    private Object data;
    private String message;
}
