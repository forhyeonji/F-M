package com.food.controller;

import com.food.common.ResCommonCode;
import com.food.model.LikeVo;
import com.food.model.ResCommonVO;
import com.food.service.CommunityService;
import com.food.service.LikeService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RequiredArgsConstructor
@RestController
public class LikeController {

    private final LikeService likeService;

    /**
     * 좋아요
     * @param likeVo
     * @param bno
     * @return
     */
    @PostMapping(value = "/api/like/insert/{bno}", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO addLike(@RequestBody LikeVo likeVo, @PathVariable(value = "bno") int bno){

        likeService.addLike(likeVo, bno);

        return ResCommonVO.builder()
                .code(ResCommonCode.SUCCESS)
                .build();
    }

    /**
     * 좋아요 취소
     * @param likeVo
     * @param bno
     * @return
     */
    @PostMapping(value = "/api/like/remove/{bno}", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO removeLike(@RequestBody LikeVo likeVo,@PathVariable(value = "bno") int bno){

        likeService.removeLike(likeVo, bno);

        return ResCommonVO.builder()
                .code(ResCommonCode.SUCCESS)
                .build();
    }
}