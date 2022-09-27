package com.food.controller;

import com.food.common.ResCommonCode;
import com.food.model.CommonCodeVo;
import com.food.model.ResCommonVO;
import com.food.service.CommonCodeService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RequiredArgsConstructor
@RestController
public class CommonCodeController {
    private final CommonCodeService commonCodeService;

    @PostMapping(value="/api/community/selectMenu", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO selectMenu(@RequestBody CommonCodeVo commonCodeVo){
        return ResCommonVO.builder()
                .result(commonCodeService.selectMenu(commonCodeVo))
                .code(ResCommonCode.SUCCESS)
                .build();
    }
}
