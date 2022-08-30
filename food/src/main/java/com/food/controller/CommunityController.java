package com.food.controller;

import com.food.model.CommunityVO;
import com.food.service.CommunityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
public class CommunityController {
    @Autowired
    CommunityService communityService;

    @RequestMapping(value = "/community/bread", method = RequestMethod.POST)
    public ResponseEntity<ArrayList<CommunityVO>> postBoardList(CommunityVO communityVO) {
        ArrayList<CommunityVO> list = communityService.boardList(communityVO);
        return new ResponseEntity<>(list, HttpStatus.OK);
    }

    @RequestMapping(value = "/community/write", method = RequestMethod.POST)
    public ResponseEntity<String> postBoardWrite(@RequestBody CommunityVO communityVO) {
        int result = communityService.boardWrite(communityVO);
        System.out.println(communityVO);
        if (result == 1) {
            return new ResponseEntity<>("success", HttpStatus.OK);
        } else {
            return new ResponseEntity<>("error", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
