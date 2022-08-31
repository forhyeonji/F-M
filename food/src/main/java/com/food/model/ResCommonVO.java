package com.food.model;


import com.food.common.ResCommonCode;
import lombok.Builder;
import lombok.Data;

import java.util.Map;

@Data
@Builder
public class ResCommonVO {
    private Map<String, Object> result;
    private ResCommonCode code;
}
