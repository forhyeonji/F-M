package com.food.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class InsertController {
	@RequestMapping(value="/insert", method = RequestMethod.POST)
	public String list () {
		return "Main/Insert";

	}
}
