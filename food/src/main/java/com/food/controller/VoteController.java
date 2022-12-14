package com.food.controller;

import com.food.common.ResCommonCode;
import com.food.model.VoteVo;
import com.food.model.ResCommonVO;
import com.food.service.VoteService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

@RequiredArgsConstructor
@RestController
public class VoteController {

    private final VoteService voteService;

    @PostMapping(value="/api/vote/check", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO checkVote(@RequestBody VoteVo voteVo){

        return ResCommonVO.builder()
                .result(voteService.checkVote(voteVo))
                .code(ResCommonCode.SUCCESS)
                .build();
    }

    @PutMapping(value="/api/vote/add", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO addVote(@RequestBody VoteVo voteVo){

        return ResCommonVO.builder()
                .result(voteService.addVote(voteVo))
                .code(ResCommonCode.SUCCESS)
                .build();
    }

    @DeleteMapping(value="/api/vote/remove", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO removeVote(@RequestBody VoteVo voteVo){

        return ResCommonVO.builder()
                .result(voteService.removeVote(voteVo))
                .code(ResCommonCode.SUCCESS)
                .build();
    }

    @PostMapping(value="/api/vote/count/{bno}", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO countVote(@PathVariable(value="bno") int bno){

        return ResCommonVO.builder()
                .result(voteService.countVote(bno))
                .code(ResCommonCode.SUCCESS)
                .build();
    }
}