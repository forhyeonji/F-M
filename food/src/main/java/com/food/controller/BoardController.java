package com.food.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {

    @RequestMapping(value = "/bread", method = RequestMethod.GET)
    public String bread() {
        return "BoardList";
    }

    @RequestMapping(value = "/boardWrite", method = RequestMethod.GET)
    public String boardWrite() {
        return "BoardWrite";
    }

    @RequestMapping(value = "/boardDetail", method = RequestMethod.GET)
    public String boardDetail() {
        return "BoardDetail";
    }

    @RequestMapping(value = "/boardModify", method = RequestMethod.GET)
    public String boardModify() {
        return "BoardModify";
    }
}
