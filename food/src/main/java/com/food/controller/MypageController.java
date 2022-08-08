package com.food.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MypageController {
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage () {
		return "Mypage/mypage";
	}
	@RequestMapping(value = "mypage/profile_edit", method = RequestMethod.GET)
	public String profileedit () {
		return "Mypage/profile_edit";
	}
	@RequestMapping(value = "mypage/resign", method = RequestMethod.GET)
	public String resign () {
		return "Mypage/resign";
	}
	@RequestMapping(value = "mypage/orderlist", method = RequestMethod.GET)
	public String orderlist () {
		return "Mypage/orderlist";
	}
	@RequestMapping(value = "mypage/orderdetail", method = RequestMethod.GET)
	public String orderdetail () {
		return "Mypage/orderdetail";
	}
	@RequestMapping(value = "mypage/ordercancle", method = RequestMethod.GET)
	public String ordercancle () {
		return "Mypage/ordercancle";
	}
	@RequestMapping(value = "mypage/orderrefund", method = RequestMethod.GET)
	public String orderrefund () {
		return "Mypage/orderrefund";
	}
	@RequestMapping(value = "mypage/delivery", method = RequestMethod.GET)
	public String delivery () {
		return "Mypage/delivery";
	}
	@RequestMapping(value = "mypage/mywrite", method = RequestMethod.GET)
	public String mywrite () {
		return "Mypage/mywrite";
	}
	@RequestMapping(value = "mypage/myreply", method = RequestMethod.GET)
	public String myreply () {
		return "Mypage/myreply";
	}
}
