package com.food.service;

import java.util.ArrayList;

import com.food.model.ShopVO;
import com.food.model.ShopdivisionVO;

public interface ShopService {
	
	//상품 등록 설계
	public void Shopenroll(ShopVO Shop);

	//상품등록(분류)
	public ArrayList<ShopdivisionVO>shopdivision(ShopVO Shop); 
	
	//상품등록수정
	public void ShopEdit(ShopVO Shop);


	
}
