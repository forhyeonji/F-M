package com.food.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class boardController {

	@RequestMapping(value = "/bread", method = RequestMethod.GET)
	public String bread () {
		return "/Board/boardList";
	}

	@RequestMapping(value = "/chinese", method = RequestMethod.GET)
	public String chinese () {
		return "/Board/boardList";
	}
	@RequestMapping(value = "/noodle", method = RequestMethod.GET)
	public String noodle () {
		return "/Board/boardList";
	}
	@RequestMapping(value = "/korean", method = RequestMethod.GET)
	public String korean () {
		return "/Board/boardList";
	}

	@RequestMapping(value = "/meat", method = RequestMethod.GET)
	public String meat () {
		return "/Board/boardList";
	}

	@RequestMapping(value = "/western", method = RequestMethod.GET)
	public String western () {
		return "/Board/boardList";
	}


}
