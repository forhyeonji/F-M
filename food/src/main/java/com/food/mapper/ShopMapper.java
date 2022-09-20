package com.food.mapper;

import java.util.ArrayList;

import com.food.model.ShopAttachVO;
import com.food.model.ShopVO;
import com.food.model.ShopdivisionVO;

public interface ShopMapper {

	// 상품 등록 
	public void Shopenroll(ShopVO Shop);
	
	public ShopVO shop(ShopVO Shop);
	
	//상품등록 수정
	public void ShopEdit(ShopVO Shop);
	
	public ArrayList<ShopdivisionVO> class1();
	
	public ArrayList<ShopdivisionVO> class2(String shop);
	
	//첨부파일 조회
	public ArrayList<ShopAttachVO> Shopattachlist(int bno);
	public void insert(ShopAttachVO attach);
	
	
}
