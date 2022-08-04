package com.food.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class noticeController {

	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String list () {
		return "Notice/notice";
	}

	
	
}
