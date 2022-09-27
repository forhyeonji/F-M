package com.food.service;

import com.food.mapper.CommonCodeMapper;
import com.food.model.CommonCodeVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class CommonCodeService {

    private final CommonCodeMapper commonCodeMapper;

    public Map<String, Object> selectMenu(CommonCodeVo commonCodeVo){
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("data", commonCodeMapper.selectMenu(commonCodeVo));

        return resultMap;
    }
}
