package com.food.mapper;

import java.util.ArrayList;

import com.food.model.CriteriaVO;
import com.food.model.ShopAttachVO;
import com.food.model.ShopVO;
import com.food.model.ShopdivisionVO;
import com.food.model.ShopquestionVO;

public interface ShopMapper {

	// 상품 등록 
	public void Shopenroll(ShopVO Shop);
	
	public ShopVO shop(ShopVO Shop);
	
	//상품등록 수정
	public void ShopEdit(ShopVO Shop);
	
	//상품 등록시 분류
	public ArrayList<ShopdivisionVO> class1();
	public ArrayList<ShopdivisionVO> class2(String shop);
	
	//첨부파일 조회
	public ArrayList<ShopAttachVO> Shopattachlist(int bno);
	public void insert(ShopAttachVO attach);
	
	//상품목록
	public void shoplist();
	
	// 상품편집
	public ShopVO prodEdit(ShopVO Shop);
	
	//페이징관련
	public ArrayList<ShopVO> list(CriteriaVO cri);
	
	//상품 총 갯수
	public int total(CriteriaVO criteriaVO);
	
	//상품목록 검색
	public ArrayList<ShopVO> goodsGetList(CriteriaVO cri);
	
	//메인화면 상품 정보
	public ArrayList<ShopVO> ShopSelect();
	
	//상품 상세 내용보기 메인 이미지 설계
	public ShopVO main(ShopVO shop);
	
	//상품 상세 내용보기 서브 이미지 설계
	public ArrayList<ShopVO> sub(ShopVO shop);
	
	//상세보기
	public ShopquestionVO shopDetail(ShopquestionVO shopquestion);
	
	//Q&A 전체 글 수
	public int total2(ShopquestionVO shopquestion);
	
	//Q&A 내가 쓴 문의
	public ArrayList<ShopquestionVO> write(ShopquestionVO shopquestion);
	
	//관리자 답변글쓰기
	public void answer(ShopquestionVO shopquestion);
	
	//Q&A 관리자 답변 확인
	public ShopquestionVO chack(ShopquestionVO shopquestion);
	
	
	
}
