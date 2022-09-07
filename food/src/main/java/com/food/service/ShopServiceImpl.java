package com.food.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.mapper.ShopMapper;
import com.food.model.ShopVO;

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

}
