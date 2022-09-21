package com.food.service;

import java.util.ArrayList;

import com.food.model.ShopAttachVO;
import com.food.model.ShopVO;
import com.food.model.ShopdivisionVO;

public interface ShopService {
	
	//상품 등록 설계
	public void Shopenroll(ShopVO Shop);

	//상품등록(분류)
	public ArrayList<ShopdivisionVO>class1(); 
	public ArrayList<ShopdivisionVO>class2(String shop); 
	
	//상품등록수정
	public void ShopEdit(ShopVO Shop);
	
	//상품등록 이미지(첨부파일 조회 설계)
	public ArrayList<ShopAttachVO> Shopattachlist(int prodnum);
	public int cntup();
	
	//상품목록
	public ArrayList<ShopVO> list();


	
}
