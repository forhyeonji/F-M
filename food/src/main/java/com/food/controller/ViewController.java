package com.food.controller;

import com.food.model.CommunityVO;
import com.food.service.CommunityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
    public String main() { return "/Main/main";  }

    @GetMapping("/community")
    public String getBoardList(){
        return "/Board/BoardList";
    }

    @GetMapping("/community/write")
    public ModelAndView getBoardWrite(CommunityVO communityVO){
        ModelAndView mav = new ModelAndView("/Board/BoardWrite");
        int bno = communityService.rowCount(communityVO);

        mav.addObject("bno", bno);

        return mav;
    }

    @GetMapping("/detail/{bno}")
    public ModelAndView getBoardDetail(@PathVariable(value="bno", required = true) String bno){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/Board/BoardDetail");
        mav.addObject("bno",bno);

        mav.addObject("board", communityService.seleteComuunityOne(bno));

        return mav;
    }
    @GetMapping("/write/{bno}")
    public ModelAndView getBoardModify(@PathVariable(value="bno", required = true) String bno){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/Board/BoardWrite");
        mav.addObject("bno",bno);

        return mav;
    }
}