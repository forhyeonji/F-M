package com.food.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.food.model.ShopVO;
import com.food.model.ShopdivisionVO;
import com.food.service.ShopService;


@Controller
public class ShopController {

	@Autowired
	private ShopService shop;
	
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
	
	@RequestMapping(value = "/shopPurchase", method = RequestMethod.GET)
	public String Purchase() {
		return "Shop/shopPurchase";
	}
	
	@RequestMapping(value="/shopProductlist", method=RequestMethod.GET)
	public String Shoplist() {
		return"Shop/shopProductlist";
	}
	
	

	@GetMapping("/shopRegistration")	// 상품등록 페이지를 실행하기 위한 url주소 매핑
	public String shopRegistration(String Shop,Model model) {
		
		model.addAttribute("class1",shop.class1());		// // shopRegistration.jsp가 실행하자마자 1분류 select
		return "Shop/shopRegistration";	// url주소가 매핑이 되면, Shop폴더 안에 있는 shopRegistration.jsp 실행
	}
	// 1차 분류를 change하면 2차분류 select
	@RequestMapping(value="/Shop/{s}",method=RequestMethod.GET)	
	public ResponseEntity<ArrayList<ShopdivisionVO>> getshopdivision(@PathVariable String s){
		System.out.println(s);
		
		return new ResponseEntity<>(shop.class2(s),HttpStatus.OK);
	}
	
	
	
	//상품등록 처리 매핑
	
	@RequestMapping(value = "/shopRegistration", method = RequestMethod.POST)
	public String ProductregistrationPOST(@RequestBody ShopVO Shop) {
		System.out.println("contoroller="+Shop);
		shop.Shopenroll(Shop);
		return "redirect:/shopProductlist";
	}
	
	/*//이미지 Ajax 주소 매핑
	@RequestMapping(value="/shopRegistrationAjaxAction",method=RequestMethod.GET)
	public void shopRegistration() {
		
	}*/
	
	@RequestMapping(value="/shopProductEdit", method=RequestMethod.GET)
	public String ShopEdit() {
		return"Shop/shopProductEdit";
	}
	
	@RequestMapping(value="/shopProductEdit", method=RequestMethod.POST)
	public String ShopEditPOST(ShopVO Shop) {
		System.out.println("controller="+Shop);
		shop.ShopEdit(Shop);
		return"Shop/shopProductEdit";
	}
	

	
}
