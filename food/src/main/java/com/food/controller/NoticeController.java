package com.food.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NoticeController {

	//공지사항 목록
		@RequestMapping(value = "/notice", method = RequestMethod.GET)
		public String notice () {
			return "/Notice/Notice";
		}
		
		//공지사항 디테일
		@RequestMapping(value = "/notice_detail", method = RequestMethod.GET)
		public String notice_detail () {
			return "/Notice/Notice_detail";
		}
		
		//공지사항 글쓰기
		@RequestMapping(value = "/notice_write", method = RequestMethod.GET)
		public String notice_write () {
			return "/Notice/Notice_write";
		}

		
		
		
		
		
		//QnA 목록
		@RequestMapping(value = "/QnA", method = RequestMethod.GET)
		public String QnA () {
			return "/Notice/QnA";
		}
		
		//QnA 디테일
		@RequestMapping(value = "/QnA_detail", method = RequestMethod.GET)
		public String QnA_detail () {
			return "/Notice/QnA_detail";
		}
		
		//QnA 글쓰기
		@RequestMapping(value = "/QnA_write", method = RequestMethod.GET)
		public String QnA_write () {
			return "/Notice/QnA_write";
		}
		
		
		
		
		//directQue 메인
		@RequestMapping(value = "/directQue", method = RequestMethod.GET)
		public String directQue () {
			return "/Notice/DirectQue";
		}
		
		//directQue 디테일
		@RequestMapping(value = "/directQue_detail", method = RequestMethod.GET)
		public String directQue_detail () {
			return "/Notice/DirectQue_detail";
		}
		
		
		//directQue 관리자 질문목록
		@RequestMapping(value = "/directKing", method = RequestMethod.GET)
		public String directKing () {
			return "/Notice/DirectKing";
		}
		
		
		//directQue 관리자 답변
		@RequestMapping(value = "/directKing_answer", method = RequestMethod.GET)
		public String directKing_answer () {
			return "/Notice/DirectKing_answer";
	}

	
	
}
