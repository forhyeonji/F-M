package com.food.controller;

import com.food.model.BoardVO;
import com.food.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
public class Controller {
    @Autowired
    BoardService boardService;

    @RequestMapping(value="/community/bread", method = RequestMethod.POST)
    public ResponseEntity<ArrayList<BoardVO>> getBoardList(BoardVO boardVO){
        ArrayList<BoardVO> list = boardService.boardList(boardVO);
        System.out.println(list);
        return new ResponseEntity<>(list, HttpStatus.OK);
    }
}
