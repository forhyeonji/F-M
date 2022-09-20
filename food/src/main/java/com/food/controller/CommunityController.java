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

import java.util.List;


@RequiredArgsConstructor
@RestController
public class CommunityController extends CommonController {

    private final CommunityService communityService;

    /**
     * 게시글 리스트
     * @param reqVO
     * @return
     */
    @PostMapping(value = "/community/bread", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO getCommunityList(@RequestBody ReqPageVO reqVO) {
        isLog(reqVO);

        return ResCommonVO.builder()
                .result(communityService.getBoardList(reqVO))
                .code(ResCommonCode.SUCCESS)
                .build();
    }

    /**
     * 게시글 상세보기
     * @param bno
     * @return
     */
    @GetMapping(value = "/api/detail/{bno}", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO getCommunityOne(
            @PathVariable(value = "bno", required = true) String bno
    ) {
        log.debug("request: {}", bno);

        return ResCommonVO.builder()
                .result(communityService.getBoardList(bno))
                .code(ResCommonCode.SUCCESS)
                .build();
    }

    /**
     * 게시글 쓰기
     * @param bno
     * @return
     */
    @GetMapping(value = "/api/write/{bno}", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO getModifyOne(
            @PathVariable(value = "bno", required = true) String bno
    ) {
        log.debug("request: {}", bno);

        return ResCommonVO.builder()
                .result(communityService.getBoardList(bno))
                .code(ResCommonCode.SUCCESS)
                .build();
    }

    /**
     * community 등록
     * @param communityVO
     * @return
     */
    @PostMapping(value="/community/write", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO writeCommunity(
            @RequestBody CommunityVO communityVO
    ){
        isLog(communityVO);

        communityService.writeCommunity(communityVO);

        return ResCommonVO.builder()
                .code(ResCommonCode.SUCCESS)
                .build();
    }

    /**
     * 게시글 수정
     * @param bno
     * @param communityVO
     * @return
     */
    @PutMapping(value = "/modify/{bno}", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<?> putModifyOne(
            @PathVariable(value = "bno", required = true) int bno,
            @RequestBody CommunityVO communityVO
    ) {
        return ResponseEntity.ok(communityService.putCommunity(communityVO, bno));
    }

    /**
     * 게시글 삭제
     * @param bno
     * @return
     */

    @DeleteMapping(value = "/api/delete/{bno}" , consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<?> deleteOne(
            @PathVariable(value = "bno", required = true) int bno
    ){
        return ResponseEntity.ok(communityService.deleteCommunity(bno));
    }

    /**
     * 좋아요 Count 출력
     * @param bno
     * @return
     */
    @GetMapping(value = "/api/lie/count/{bno}", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResCommonVO likeCount(
            @PathVariable(value = "bno") int bno
    ){

        return ResCommonVO.builder()
                .result(communityService.likeCount(bno))
                .code(ResCommonCode.SUCCESS)
                .build();
    }
}

