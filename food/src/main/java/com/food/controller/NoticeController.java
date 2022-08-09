package com.food.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NoticeController {


		@RequestMapping(value = "/notice", method = RequestMethod.GET)
		public String notice () {
			return "/Notice/Notice";
		}
		
	
		@RequestMapping(value = "/notice_detail", method = RequestMethod.GET)
		public String notice_detail () {
			return "/Notice/Notice_detail";
		}
		
		
		@RequestMapping(value = "/notice_write", method = RequestMethod.GET)
		public String notice_write () {
			return "/Notice/Notice_write";
		}
		
		
		
		@RequestMapping(value = "/notice_write", method = RequestMethod.POST)
		public String notice_write_post () {

			return "/Notice/Notice_write";
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
