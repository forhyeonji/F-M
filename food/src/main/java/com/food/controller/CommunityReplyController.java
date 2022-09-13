package com.food.controller;

import com.food.common.ResCommonCode;
import com.food.model.ReplyPageVO;
import com.food.model.ResCommonVO;
import com.food.service.CommunityReplyService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
public class CommunityReplyController {
    private final CommunityReplyService communityReplyService;

    @PostMapping(value="/api/reply/{bno}", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO getCommunityReplyList(
            @RequestBody ReplyPageVO replyPageVO,
            @PathVariable int bno
    ){
        System.out.println(bno);
        return ResCommonVO.builder()
                .result(communityReplyService.getReplyList(replyPageVO, bno))
                .code(ResCommonCode.SUCCESS)
                .build();
    }
}
