package com.food.controller;

import com.food.common.ResCommonCode;
import com.food.config.ImgConfig;
import com.food.model.ResCommonVO;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * 이미지 제어 controller
 * @author kimseongmin0301
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("/img")
public class ImgController extends CommonController{
    private final ImgConfig imgConfig;

    /**
     * 해당하는 id의 이미지 가져오기
     * @param id
     * @param response
     */
    @GetMapping("/{id}")
    public void getImg(
            @PathVariable(value = "id", required = true) String id,
            HttpServletResponse response
    ){
        response.setContentType("image/png");

        try{
            FileCopyUtils.copy(imgConfig.getImgMap(id), response.getOutputStream());
        } catch (IOException e){
            log.error("img stream error");
        }
    }

    /**
     * 이미지 임시 저장
     * @param img
     * @return
     */
    @PostMapping(value = "/tempSave", consumes = MediaType.MULTIPART_FORM_DATA_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO tempSaveImg(
            @RequestPart(value = "img", required = true) MultipartFile img
    ){
        log.debug("request : {}", img);

        Map<String, Object> hm = new HashMap<>();
        try {
            hm.put("id", imgConfig.registerImgMap(img.getBytes()));
        } catch (IOException e){
            log.error("register img error");
        }

        return ResCommonVO.builder()
                .result(hm)
                .code(ResCommonCode.SUCCESS)
                .build();
    }
}
