package com.food.controller;

import com.food.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
}