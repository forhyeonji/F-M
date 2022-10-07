package com.food.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	
	@RequestMapping(value="/main", method = RequestMethod.GET)
	public void adminMainGET() throws Exception{
	        
		logger.info("������ ������ �̵�");
	        
	}
	
}
