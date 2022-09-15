package com.food.controller;

import com.food.common.ResCommonCode;
import com.food.model.CommunityReplyVO;
import com.food.model.ReplyPageVO;
import com.food.model.ResCommonVO;
import com.food.service.CommunityReplyService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
public class CommunityReplyController {
    private final CommunityReplyService communityReplyService;

    /**
     * 댓글 리스트 출력
     * @param replyPageVO
     * @param bno
     * @return
     */
    @PostMapping(value="/api/reply/{bno}", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO getCommunityReplyList(
            @RequestBody ReplyPageVO replyPageVO,
            @PathVariable int bno
    ){
        return ResCommonVO.builder()
                .result(communityReplyService.getReplyList(replyPageVO, bno))
                .code(ResCommonCode.SUCCESS)
                .build();
    }

    /**
     * 댓글 등록
     * @param communityReplyVO
     * @return
     */
    @PostMapping(value="/api/reply/write", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO insertCommunityReply(
            @RequestBody CommunityReplyVO communityReplyVO
            ){
        communityReplyService.insertCommunityReply(communityReplyVO);

        return ResCommonVO.builder()
                .code(ResCommonCode.SUCCESS)
                .build();
    }

    @DeleteMapping(value="/api/reply/delete", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public void deleteCommunityReply(
            @RequestBody int rno
    ){
        communityReplyService.deleteCommunityReply(rno);
    }
}
