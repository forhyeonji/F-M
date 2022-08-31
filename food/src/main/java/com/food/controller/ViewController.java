package com.food.controller;

import com.food.model.CommunityVO;
import com.food.service.CommunityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewController {
    @Autowired
    CommunityService communityService;
    @GetMapping(value = "/join")
    public String join() {
        return "/Main/insert";
    }

    @GetMapping(value = "/")
    public String main() {
        return "/Main/main";

    }

    @GetMapping(value = "/login")
    public String login() {
        return "/Main/login";

    }

    @GetMapping("/community/bread")
    public String getBoardList(){
        return "/Board/BoardList";
    }

    @GetMapping("/community/write")
    public String getBoardWrite(){
        return "/Board/BoardWrite";
    }

    @GetMapping("/detail/{bno}")
    public ModelAndView getBoardDetail(@PathVariable(value="bno", required = true) String bno){
        ModelAndView mav = new ModelAndView("detail");
        mav.addObject("bno",bno);
        mav.addObject("mode","detail");

        return mav;
    }
    @GetMapping("/community/modify")
    public String getBoardModify(CommunityVO communityVO, Model model){
        model.addAttribute("detail", communityService.boardDetail(communityVO));
        return "/Board/BoardModify";
    }
}