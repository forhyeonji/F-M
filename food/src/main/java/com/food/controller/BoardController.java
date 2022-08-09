package com.food.controller;

import com.food.model.BoardVO;
import com.food.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class BoardController {

    @Autowired
    BoardService bs;

    @RequestMapping(value = "/bread", method = RequestMethod.GET)
    public String bread(BoardVO board, Model model) throws Exception {
        List<BoardVO> list = bs.selectBoardList(board);
        model.addAttribute("list", list);
        System.out.println(list);

        return "/Board/BoardList";
    }

    @RequestMapping(value = "/boardWrite", method = RequestMethod.GET)
    public String boardWriteGet() {
        return "/Board/BoardWrite";
    }
    @RequestMapping(value = "/boardWrite", method = RequestMethod.POST)
    public String boardWritePost(BoardVO board) {
        //비지니스 영역 연결한 후 BoardService에 있는 write 메소드를 호출
        bs.write(board);
        return "/Board/BoardWrite";
    }

    @RequestMapping(value = "/boardDetail", method = RequestMethod.GET)
    public String boardDetail() {
        return "/Board/BoardDetail";
    }

    @RequestMapping(value = "/boardModify", method = RequestMethod.GET)
    public String boardModify() {
        return "/Board/BoardModify";
    }
}
