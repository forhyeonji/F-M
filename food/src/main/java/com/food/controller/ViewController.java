package com.food.controller;

import com.food.model.CommunityVO;
import com.food.service.CommunityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ViewController {
    @Autowired
    CommunityService communityService;
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
    public String getBoardDetail(CommunityVO communityVO, Model model){
        model.addAttribute("detail", communityService.boardDetail(communityVO));
        return "/Board/BoardDetail";
    }
    @RequestMapping(value="/community/modify", method = RequestMethod.GET)
    public String getBoardModify(CommunityVO communityVO, Model model){
        model.addAttribute("detail", communityService.boardDetail(communityVO));
        return "/Board/BoardModify";
    }
}