package com.food.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.food.model.NotiBoardVO;
import com.food.service.NotiBoardService;

@Controller
public class NoticeController {

		@Autowired
		NotiBoardService nbs;
	
	
	

		@RequestMapping(value = "/notice", method = RequestMethod.GET)
		public String notice (Model model) {
			
			model.addAttribute("list",nbs.list());
			
			return "/Notice/Notice";
		}
		
	
		@RequestMapping(value = "/notice_detail", method = RequestMethod.GET)
		public String notice_detail (NotiBoardVO board, Model model) {
			model.addAttribute("detail",nbs.detail(board));
			
			return "/Notice/Notice_detail";
		}
		
		
		// 글수정 화면
		@RequestMapping(value = "/notice/modify", method = RequestMethod.GET)
		public String notice_modify (NotiBoardVO board, Model model) {
			model.addAttribute("modify", nbs.detail(board));
			
			return "/Notice/Notice_modify";
		}
		
		
		// 글수정 서버
		@RequestMapping(value = "/notice/modify", method = RequestMethod.POST)
		public String notice_modifyPost (NotiBoardVO board, RedirectAttributes rttr) {
			nbs.modify(board);
			rttr.addAttribute("bno", board.getBno());
			
			return "redirect:/notice_detail";
		}
		
		// 글삭제
		@RequestMapping(value = "/notice/remove", method = RequestMethod.POST)
		public String notice_removePost (NotiBoardVO board) {
			nbs.remove(board);
			
			return "redirect:/notice";
		}
		
		
		@RequestMapping(value = "/notice_write", method = RequestMethod.GET)
		public String notice_write () {
			return "/Notice/Notice_write";
		}
		
		
		
		@RequestMapping(value = "/notice_write", method = RequestMethod.POST)
		public String notice_write_post (NotiBoardVO board) {
			nbs.write(board);
			return "redirect:/notice";
		}

		
		
		
		
		
		@RequestMapping(value = "/QnA", method = RequestMethod.GET)
		public String QnA () {
			return "/Notice/QnA";
		}
		
		
		@RequestMapping(value = "/QnA_detail", method = RequestMethod.GET)
		public String QnA_detail () {
			return "/Notice/QnA_detail";
		}
		
		
		@RequestMapping(value = "/QnA_write", method = RequestMethod.GET)
		public String QnA_write () {
			return "/Notice/QnA_write";
		}
		
		@RequestMapping(value = "/QnA_write", method = RequestMethod.POST)
		public String QnA_write_post () {
			return "/Notice/QnA_write";
		}
		
		
		
		
		@RequestMapping(value = "/directQue", method = RequestMethod.GET)
		public String directQue () {
			return "/Notice/DirectQue";
		}
		
		
		@RequestMapping(value = "/directQue_detail", method = RequestMethod.GET)
		public String directQue_detail () {
			return "/Notice/DirectQue_detail";
		}
		
		
	
		@RequestMapping(value = "/directKing", method = RequestMethod.GET)
		public String directKing () {
			return "/Notice/DirectKing";
		}
		
		
		
		@RequestMapping(value = "/directKing_answer", method = RequestMethod.GET)
		public String directKing_answer () {
			return "/Notice/DirectKing_answer";
	}

	
	
}
