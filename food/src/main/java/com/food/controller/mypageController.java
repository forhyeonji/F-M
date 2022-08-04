package com.food.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class mypageController {

	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String list () {
		return "Mypage/mypage";
	}

}
