package com.food.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class boardController {
	
	@RequestMapping(value = "/noodle", method = RequestMethod.GET)
	public String noodle () {
		return "/Board/noodle";
	}

	@RequestMapping(value = "/bread", method = RequestMethod.GET)
	public String bread () {
		return "/Board/bread";
	}

	@RequestMapping(value = "/chinese", method = RequestMethod.GET)
	public String chinese () {
		return "/Board/chinese";
	}

	@RequestMapping(value = "/korean", method = RequestMethod.GET)
	public String korean () {
		return "/Board/korean";
	}

	@RequestMapping(value = "/meat", method = RequestMethod.GET)
	public String meat () {
		return "/Board/meat";
	}

	@RequestMapping(value = "/western", method = RequestMethod.GET)
	public String western () {
		return "/Board/western";
	}


}
