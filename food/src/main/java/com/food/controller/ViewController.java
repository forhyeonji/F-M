package com.food.controller;

import com.food.model.BoardVO;
import com.food.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ViewController {
    @Autowired
    BoardService boardService;
    @RequestMapping(value = "/join", method = RequestMethod.GET)
    public String join() {
        return "/Main/insert";
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String main() {
        return "/Main/main";

    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "/Main/login";

    }

    @RequestMapping(value="/community/bread", method = RequestMethod.GET)
    public String getBoardList(){
        return "/Board/BoardList";
    }

    @RequestMapping(value="/community/write", method = RequestMethod.GET)
    public String getBoardWrite(){
        return "/Board/BoardWrite";
    }

    @RequestMapping(value="/community/detail", method = RequestMethod.GET)
    public String getBoardDetail(BoardVO boardVO,Model model){
        model.addAttribute("detail",boardService.boardDetail(boardVO));
        return "/Board/BoardDetail";
    }
}