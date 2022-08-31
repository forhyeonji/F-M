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

    @PostMapping(value = "/community/modify", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> postBoardModify(@RequestBody CommunityVO communityVO) {
        isLog(communityVO);

        int result = communityService.boardModify(communityVO);
        if (result == 1) {
            return new ResponseEntity<>("success", HttpStatus.OK);
        } else {
            return new ResponseEntity<>("error", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PostMapping(value = "/community/detail", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> postBoardDetail(@RequestBody CommunityVO communityVO) {
        int result = communityService.boardModify(communityVO);
        if (result == 1) {
            return new ResponseEntity<>("success", HttpStatus.OK);
        } else {
            return new ResponseEntity<>("error", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PostMapping(value = "/community/delete", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> postBoardDelete(@RequestBody CommunityVO communityVO) {
        int result = communityService.boardDelete(communityVO);
        if (result == 1) {
            return new ResponseEntity<>("success", HttpStatus.OK);
        } else {
            return new ResponseEntity<>("error", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}

