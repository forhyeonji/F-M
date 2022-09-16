package com.food.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.food.model.AnswerVO;
import com.food.model.CriteriaVO;
import com.food.model.MypageVO;
import com.food.model.NotiBoardVO;
import com.food.model.Page2VO;
import com.food.model.PageVO;
import com.food.model.UserVO;
import com.food.service.NotiBoardService;

@Controller
public class NoticeController {

		@Autowired
		NotiBoardService nbs;
		
		
	/* 공지사항 */
		
		@RequestMapping(value = "/notice", method = RequestMethod.GET)
		public String notice (Model model, CriteriaVO criteriaVO) {
			// System.out.println(criteriaVO);
			model.addAttribute("list", nbs.list(criteriaVO));
			
			int total = nbs.total(criteriaVO);
			// System.out.println("controller="+total);
			
			model.addAttribute("paging", new PageVO(criteriaVO, total));
			
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
			
			return "redirect:/notice?sep=noti";
		}
		
		
		@RequestMapping(value = "/notice_write", method = RequestMethod.GET)
		public String notice_write () {
			return "/Notice/Notice_write";
		}
		
		
		
		@RequestMapping(value = "/notice_write", method = RequestMethod.POST)
		public String notice_write_post (NotiBoardVO board) {
			nbs.write(board);
			return "redirect:/notice?sep=noti";
		}

		
		
		
		
	/* 자주하는질문 */		
		
		@RequestMapping(value = "/QnA", method = RequestMethod.GET)
		public String QnA (Model model, CriteriaVO criteriaVO) {
			
			model.addAttribute("list", nbs.list(criteriaVO));
			
			int total = nbs.total(criteriaVO);
			// System.out.println("controller="+total);
			
			model.addAttribute("paging", new PageVO(criteriaVO, total));
			
			return "/Notice/QnA";
		}
		
		
		@RequestMapping(value = "/QnA_detail", method = RequestMethod.GET)
		public String QnA_detail (NotiBoardVO board, Model model) {
			model.addAttribute("detail",nbs.detail(board));
			
			return "/Notice/QnA_detail";
		}
		
		
		@RequestMapping(value = "/QnA_write", method = RequestMethod.GET)
		public String QnA_write () {
			return "/Notice/QnA_write";
		}
		
		@RequestMapping(value = "/QnA_write", method = RequestMethod.POST)
		public String QnA_write_post (NotiBoardVO board) {
			nbs.write(board);
			return "redirect:/QnA?sep=qna";
		}
		
		// 자주하는질문 글수정
		@RequestMapping(value = "/QnA/modify", method = RequestMethod.GET)
		public String QnA_modify (NotiBoardVO board, Model model) {
			model.addAttribute("modify", nbs.detail(board));
			
			return "/Notice/QnA_modify";
		}
		
		// 자주하는질문 글수정 서버
		@RequestMapping(value = "/QnA/modify", method = RequestMethod.POST)
		public String QnA_modifyPost (NotiBoardVO board, RedirectAttributes rttr) {
			nbs.modify(board);
			rttr.addAttribute("bno", board.getBno());
					
			return "redirect:/QnA_detail";
		}
		// 글삭제
		@RequestMapping(value = "/QnA/remove", method = RequestMethod.POST)
		public String QnA_removePost (NotiBoardVO board) {
			nbs.remove(board);
					
			return "redirect:/QnA?sep=qna";
		}
		
		
		
		
		
		
		
		
	/* 1:1문의 질문 */	
		
		@RequestMapping(value = "/directQue", method = RequestMethod.GET)
		public String directQue (UserVO user, MypageVO mypage, Model model, CriteriaVO criteriaVO, HttpSession session) {
			
			
			
			String id = (String) session.getAttribute("user_id");
			System.out.println("로그인된 아이디="+id);
			
			user.setUser_id(id);
			mypage.setUser_id(id);
		
			
			
			model.addAttribute("user", nbs.mypage(user));
			model.addAttribute("mywrite", nbs.mywrite(mypage));
			
			int total2 = nbs.total2(mypage);	
			model.addAttribute("paging", new Page2VO(criteriaVO, total2));

			return "/Notice/DirectQue";
		}
		
		
		@RequestMapping(value = "/directQue", method = RequestMethod.POST)
		public String directQuePost (NotiBoardVO board) {
			nbs.write(board);
			return "redirect:/directQue";
		}
		

		
		
		@RequestMapping(value = "/directQue_detail", method = RequestMethod.GET)
		public String directQue_detail () {
			return "/Notice/DirectQue_detail";
		}
		
		
		
		
		
	/* 1:1문의 답변 */
		
		@RequestMapping(value = "/directKing", method = RequestMethod.GET)
		public String directKing (Model model, CriteriaVO criteriaVO) {
			model.addAttribute("list", nbs.list(criteriaVO));
			int total = nbs.total(criteriaVO);
			model.addAttribute("paging", new PageVO(criteriaVO, total));
			
			
			
			return "/Notice/DirectKing";
		}
		
		
		@RequestMapping(value = "/directKing_answer", method = RequestMethod.GET)
		public String directKing_answer (NotiBoardVO board, Model model, AnswerVO ans) {
			
			model.addAttribute("detail",nbs.detail(board));
			
			System.out.println("answercheck="+nbs.answercheck(ans));
			model.addAttribute("answercheck",nbs.answercheck(ans));
			
			
			return "/Notice/DirectKing_answer";
	}
		
		@RequestMapping(value = "/directKing_answer", method = RequestMethod.POST)
		public String directKing_answer_post (AnswerVO ans) {
			nbs.answer(ans);
			System.out.println(ans);
			
			return "redirect:/notice?sep=noti";
		}
		
	
	
}
