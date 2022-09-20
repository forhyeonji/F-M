package com.food.controller;

import com.food.common.ResCommonCode;
import com.food.model.LikeVo;
import com.food.model.ResCommonVO;
import com.food.service.LikeService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
public class LikeController {

    private final LikeService likeService;

    @PostMapping(value = "/api/like/insert/{bno}", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO addLike(@RequestBody LikeVo likeVo, @PathVariable(value = "bno") int bno){

        likeService.addLike(likeVo, bno);

        return ResCommonVO.builder()
                .code(ResCommonCode.SUCCESS)
                .build();
    }

    @PostMapping(value = "/api/like/remove/{bno}", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO removeLike(@RequestBody LikeVo likeVo,@PathVariable(value = "bno") int bno){

        likeService.removeLike(likeVo, bno);

        return ResCommonVO.builder()
                .code(ResCommonCode.SUCCESS)
                .build();
    }

}