package com.food.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class boardController {
	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String list () {
		return "Board/board";
	}

}
