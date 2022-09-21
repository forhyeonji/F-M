package com.food.controller;

/*import java.io.File;
import java.io.FileInputStream;*/
import java.util.ArrayList;
/*import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
*/
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/*import org.springframework.web.bind.annotation.RequestParam;*/

import com.food.model.ShopVO;
import com.food.model.ShopdivisionVO;
import com.food.service.ShopService;


@Controller
public class ShopController {

	@Autowired
	private ShopService shop;
	
	//상품메인
	@RequestMapping(value = "/shop", method = RequestMethod.GET)
	public String list() {
		return "Shop/shop";
	}

	//상품카테고리 안 meat part
	@RequestMapping(value = "/shopconer", method = RequestMethod.GET)
	public String Coner() {
		return "Shop/shopconer";
	}
	
	//상품카테고리 안 소고기
	@RequestMapping(value = "/shopbeef", method = RequestMethod.GET)
	public String serve() {
		return "Shop/shopbeef";
	}
	
	//상품구매
	@RequestMapping(value = "/shopPurchase", method = RequestMethod.GET)
	public String Purchase() {
		return "Shop/shopPurchase";
	}
	
	//상품목록
	@RequestMapping(value="/shopProductlist", method=RequestMethod.GET)
	public String Shoplist(Model model) {
		model.addAttribute("shoplist", shop.list());
		return"Shop/shopProductlist";
	}
	
/*	@RequestMapping(value="/shopProductlist")
	public String Shoplist(@RequestParam(value="filename") String filename, HttpServletResponse response)throws Exception{

		//DB에 저장된 파일 정보를 불러오기
		Map<String, String> map = new map<String, String>();
	    map.put("filename", filename);
		Map<String, String> result = 첨부파일검색서비스.첨부파일검색(map);
	    
		response.setContentType("image/jpg");
	    ServletOutputStream bout = response.getOutputStream();
	    //파일의 경로
	    String imgpath = map.get("path")+File.separator+result.get("fileName");
	    FileInputStream f = new FileInputStream(imgpath);
	    int length;
	    byte[] buffer = new byte[10];
	    while((length=f.read(buffer)) != -1){
	    	bout.write(buffer,0,length);
	    }
	    return null;
	}
	*/
	
	
	
	//상품등록
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
	public String ProductregistrationPOST(ShopVO Shop) {
		System.out.println("contoroller="+Shop);
		shop.Shopenroll(Shop);
		return "redirect:/shopProductlist";
	}
	

	//상품 등록 후 수정
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
