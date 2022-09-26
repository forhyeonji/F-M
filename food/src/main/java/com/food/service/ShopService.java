package com.food.service;

import java.util.ArrayList;

import com.food.model.CriteriaVO;
import com.food.model.ShopAttachVO;
import com.food.model.ShopVO;
import com.food.model.ShopdivisionVO;

public interface ShopService {
	
	/* Shop */
	
	//상품 등록 설계
	public void Shopenroll(ShopVO Shop);
	//상품 등록 수정 설계
	public void ShopEdit(ShopVO Shop);

	//상품등록(분류)
	public ArrayList<ShopdivisionVO> class1(); 
	public ArrayList<ShopdivisionVO> class2(String shop); 
		
	//상품목록
	public ArrayList<ShopVO> list(CriteriaVO cri);
	public int total(CriteriaVO criteriaVO);
	
	// 상품편집 클릭시 상품 상세 내용
	public ShopVO prodEdit(ShopVO Shop);
	
	// 상품 상세 내용보기 메인 이미지 설계
	public ShopVO main(ShopVO shop);

	// 상품 상세 내용보기 서브 이미지 설계
	public ArrayList<ShopVO> sub(ShopVO shop);

	
	
	/* ShopAttach */
	
	//상품등록 이미지(첨부파일 조회 설계)
	public ArrayList<ShopAttachVO> Shopattachlist(int prodnum);
	public int cntup();
	public void insert(ShopAttachVO attach);
	
	
	
	
}
