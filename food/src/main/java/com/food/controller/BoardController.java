package com.food.controller;

import com.food.model.BoardVO;
import com.food.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
public class BoardController {
    @Autowired
    BoardService boardService;

    @RequestMapping(value = "/community/bread", method = RequestMethod.POST)
    public ResponseEntity<ArrayList<BoardVO>> postBoardList(BoardVO boardVO) {
        ArrayList<BoardVO> list = boardService.boardList(boardVO);
        return new ResponseEntity<>(list, HttpStatus.OK);
    }

    @RequestMapping(value = "/community/write", method = RequestMethod.POST)
    public ResponseEntity<String> postBoardWrite(@RequestBody BoardVO boardVO) {
        int result = boardService.boardWrite(boardVO);
        System.out.println(boardVO);
        if (result == 1) {
            return new ResponseEntity<>("success", HttpStatus.OK);
        } else {
            return new ResponseEntity<>("error", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
