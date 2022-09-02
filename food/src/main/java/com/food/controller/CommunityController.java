package com.food.controller;

import com.food.common.ResCommonCode;
import com.food.model.CommunityVO;
import com.food.model.ReqPageVO;
import com.food.model.ResCommonVO;
import com.food.service.CommunityService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RequiredArgsConstructor
@RestController
public class CommunityController extends CommonController{

    private final CommunityService communityService;

    @PostMapping(value="/community/bread", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO getCommunityList(@RequestBody ReqPageVO reqVO){
        isLog(reqVO);

        return ResCommonVO.builder()
                .result(communityService.getBoardList(reqVO))
                .code(ResCommonCode.SUCCESS)
                .build();
    }

    @GetMapping(value="/api/detail/{bno}", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO getCommunityOne(
            @PathVariable(value="bno", required = true) String bno
    ){
        log.debug("request: {}", bno);

        return ResCommonVO.builder()
                .result(communityService.getBoardList(bno))
                .code(ResCommonCode.SUCCESS)
                .build();
    }

    // 업데이트시
    @GetMapping(value="/api/write/{bno}", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO getModifyOne(
            @PathVariable(value="bno", required = true) String bno
    ){
        return ResCommonVO.builder()
                .result(communityService.getBoardList(bno))
                .code(ResCommonCode.SUCCESS)
                .build();
    }

    @PostMapping(value = "/community/write", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> postBoardWrite(@RequestBody CommunityVO communityVO) {
        isLog(communityVO);

        int result = communityService.boardWrite(communityVO);
        if (result == 1) {
            return new ResponseEntity<>("success", HttpStatus.OK);
        } else {
            return new ResponseEntity<>("error", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}

