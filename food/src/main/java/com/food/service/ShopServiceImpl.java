package com.food.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.mapper.ShopAttachMapper;
import com.food.mapper.ShopMapper;
import com.food.model.CartVO;
import com.food.model.CriteriaVO;
import com.food.model.ShopAttachVO;
import com.food.model.ShopVO;
import com.food.model.ShopdivisionVO;
import com.food.model.ShopquestionVO;

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
	
	// 상품 분류 페이지 구현
	public ArrayList<ShopVO> shopcorner(ShopVO Shop){
		return Sm.shopcorner(Shop);
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

	//메인화면 상품 정보 : 추천상품
	public ArrayList<ShopVO> recoItem(){

		return Sm.recoItem();
	}
	
	//메인화면 상품 정보 : 신상품
	public ArrayList<ShopVO> newItem(){

		return Sm.newItem();
	}
	
	
	public ArrayList<ShopquestionVO> shopDetail(CriteriaVO criteriaVO) {
			System.out.println("ShopVO의 값 = "+criteriaVO);
			return Sm.shopDetail(criteriaVO);
	}
	
	public ShopquestionVO shopEnDetail(ShopquestionVO shopquestion) {
		System.out.println("ShopVO의 값 = "+shopquestion);
		return Sm.shopEnDetail(shopquestion);
	}
	
	// 상품 상세 내용보기 메인 이미지 구현
	public ShopVO main(ShopVO shop) {
		return Sm.main(shop);
	}

	// 상품 상세 내용보기 서브 이미지 구현
	public ArrayList<ShopVO> sub(ShopVO shop) {
		return Sm.sub(shop);
	}
	
	
	//Q&A 전체 글 수
	public int total2(ShopquestionVO shopquestion) {
			return Sm.total2(shopquestion);
	}
	
	//Q&A 질의 내가 쓴 문의
	   public void write(ShopquestionVO shopquestion){
		   System.out.println("ShowpService="+shopquestion);
	       Sm.write(shopquestion);
	  }
	
	//관리자 답변글쓰기
	public void answer(ShopquestionVO shopquestion) {
		 Sm.answer(shopquestion);
	}
	
	//관리자 답변 확인
	public ShopquestionVO chack(ShopquestionVO shopquestion) {
		return Sm.chack(shopquestion);
	}
	
	
	/*CartVO*/
	
	//장바구니 insert
	public void cart(CartVO cart) {
		Sm.cart(cart);
	}
	
}
