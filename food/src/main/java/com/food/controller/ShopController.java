package com.food.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ShopController {

	@RequestMapping(value = "/shop", method = RequestMethod.GET)
	public String list() {
		return "Shop/shop";
	}

	@RequestMapping(value = "/shopconer", method = RequestMethod.GET)
	public String Coner() {
		return "Shop/shopconer";
	}

	@RequestMapping(value = "/shopbeef", method = RequestMethod.GET)
	public String serve() {
		return "Shop/shopbeef";
	}

}
