package com.food.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.food.model.CartVO;
import com.food.model.MypageVO;
import com.food.model.OrderlistVO;
import com.food.model.UserVO;
//마이페이지 관련 serivece
public interface MypageService {
	
	//마이페이지를 출력하기 위한 설계(아이디 연동)
	public UserVO mypage(UserVO user);
	
	//회원정보페이지를 출력하기 위한 설계
	public UserVO profile(UserVO user);
	
	//회원정보 수정을 출력하기 위한 설계
	public void edit(UserVO user);
	
	//회원 탈퇴 페이지를 출력하기 위한 설계
	public UserVO resign(UserVO user);
	
	//회원 탈퇴를 출력하기 위한 설계
	public void resignPost(UserVO user);
	
	//장바구니 출력하기 위한 설계
	public ArrayList<CartVO> cartlist(String user_id);
	
	//장바구니 상품 수량을 수정하기 위한 설계
	public int cartmodify(CartVO cart);
	
	//장바구니 상품을 삭제하기 위한 설계
	public int cartdelete(int c_no);
	
	//장바구니 상품을 주문하기 위한 설계
	public int order(OrderlistVO order);
	
	//주문목록을 출력하기 위한 설계
	public List<Map<String, Object>> orderlist(OrderlistVO order);
	
	//주문 리스트 건수 카운팅 설계
	public int orderlistCnt(OrderlistVO order);
	
	//주문 취소페이지를 출력하기 위한 설계
	public OrderlistVO canclePage(OrderlistVO order);
	
	//주문 취소를 위한 설계
	public int ordercancle(OrderlistVO order);
	
	//주문 취소리스트 출력하기 위한 설계
	public List<Map<String, Object>> canclelist(OrderlistVO order);
	
	//주문 취소리스트 건수 카운팅 설계
	public int canclelistCnt(OrderlistVO order);
	
	//내가 쓴글을 출력하기 위한 설계
	public ArrayList<MypageVO> mywrite(MypageVO mypage);
	
	//게시판 전체 건수 설계
	public int total(MypageVO mypage);
	
	//내가 쓴 글 상세보기
	public MypageVO mywritedetail(MypageVO mypage);
	
	//내글에 달린 댓글 수
	public int replycnt(MypageVO mypage);
	
	//내 댓글 상세보기
	public List<Map<String, Object>> myreply(MypageVO mypage);
	
	//댓글용 전체 건수 설계
	public int retotal(MypageVO mypage);
	
	//내가 좋아요한 글 보기
	public List<Map<String, Object>> mylike(MypageVO mypage);
	
	//내가 좋아요한 글 수
	public int liketotal(MypageVO mypage);
}
