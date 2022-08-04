package com.food.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class shopController {

	@RequestMapping(value = "/shop", method = RequestMethod.GET)
	public String list () {
		return "Shop/shop";
	}

	
	
}
