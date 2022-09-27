package com.food.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.mapper.ShopAttachMapper;
import com.food.mapper.ShopMapper;
import com.food.model.CriteriaVO;
import com.food.model.ShopAttachVO;
import com.food.model.ShopVO;
import com.food.model.ShopdivisionVO;

@Service
public class ShopServiceImpl implements ShopService {

	@Autowired
	ShopMapper Sm;
	
	@Autowired
	ShopAttachMapper sam;

	public void Shopenroll(ShopVO Shop) {
		//ShopMapper에 있는 Shopenroll메서드 호출
		//메서드의 매개변수를 통해 ShopVO값을 Shopenroll의 shop으로 전달
		Sm.Shopenroll(Shop);		//tb_shop에 관한것
		
		Shop.getAttach().forEach(attach->{
			
				//ShopAttachFileVO의 prodnum에 ShopVO의 prodnum 저장
			attach.setProdnum(Shop.getProdnum());
			sam.insert(attach);
		});
	}
	
	
	public ShopVO shop(ShopVO Shop) {
		System.out.println("등록완료");
		return Sm.shop(Shop);
	}
	
	//상품등록 후 수정
	public void ShopEdit(ShopVO shop) {
		System.out.println(shop);
		Sm.ShopEdit(shop);
	}
	
	//상품 등록시 분류
	public ArrayList<ShopdivisionVO> class1() {
		return Sm.class1();
	}
	public ArrayList<ShopdivisionVO> class2(String Shop) {
		return Sm.class2(Shop);
	}

	// 상품편집 클릭시 상품 상세 내용
	public ShopVO prodEdit(ShopVO Shop) {
		return Sm.prodEdit(Shop);
	}

	//첨부파일 조회 구현
	public ArrayList<ShopAttachVO> Shopattachlist(int prodnum){
		return sam.Shopattachlist(prodnum);
	}
	
	@Override
	public int cntup() {
		return 0;
	}
	
	//상품목록 구현
	public ArrayList<ShopVO> list(CriteriaVO cri) {
		return Sm.list(cri);
	}
	
	// 상품 총 갯수
	public int total(CriteriaVO criteriaVO) {
		return Sm.total(criteriaVO);
	}
	@Override
	public void insert(ShopAttachVO attach) {

	}

	//메인화면 상품 정보
	public ArrayList<ShopVO> ShopSelect(){

		return Sm.ShopSelect();
	}
	
	
	// 상품 상세 내용보기 메인 이미지 구현
	public ShopVO main(ShopVO shop) {
		return Sm.main(shop);
	}

	// 상품 상세 내용보기 서브 이미지 구현
	public ArrayList<ShopVO> sub(ShopVO shop) {
		return Sm.sub(shop);
	}
}
