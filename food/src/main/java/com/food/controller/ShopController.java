package com.food.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.food.model.ShopVO;
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
	
	//상품등록 매핑
	
	@RequestMapping(value = "/shopRegistration", method = RequestMethod.GET)
	public String Productregistration() {
		return "Shop/shopRegistration";
	}
	
	//상품등록 처리 매핑
	
	@RequestMapping(value = "/shopRegistration", method = RequestMethod.POST)
	public String ProductregistrationPOST(ShopVO Shop) {
		System.out.println("contoroller="+Shop);
		shop.Shopenroll(Shop);
		return "redirect:/shopProductlist";
	}
	
	
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
