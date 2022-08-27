package com.food.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ViewController {
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
}