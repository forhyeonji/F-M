package com.food.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.food.mapper.ShopMapper;
import com.food.model.ShopVO;
import com.food.model.ShopdivisionVO;

@Service
public class ShopServiceImpl implements ShopService {

	@Autowired
	ShopMapper Sm;
	
	public void Shopenroll(ShopVO Shop) {
		//ShopMapper에 있는 Shopenroll메서드 호출
		//메서드의 매개변수를 통해 ShopVO값을 Shopenroll의 shop으로 전달
		Sm.Shopenroll(Shop);
	}
	
	public ShopVO shop(ShopVO Shop) {
		System.out.println("등록완료");
		return Sm.shop(Shop);
	}

	public void ShopEdit(ShopVO Shop) {
		Sm.ShopEdit(Shop);
	}
	
	public ArrayList<ShopdivisionVO> class1() {
		return Sm.class1();
	}
	
	public ArrayList<ShopdivisionVO> class2(String Shop) {
		return Sm.class2(Shop);
	}
	
	//첨부파일 업로드
	@PostMapping("/shopRegistration")
	public void shopRegistrationActionPOST(MultipartFile image) {
		System.out.println("shopRegistrationPOST...");

		System.out.println("파일 이름:"+image.getOriginalFilename());
		System.out.println("파일 타입:"+image.getContentType());
		System.out.println("파일 크기:"+image.getSize());
	
		
	}
}
