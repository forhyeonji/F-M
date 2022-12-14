package com.food.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.mapper.MypageMapper;
import com.food.model.CartVO;
import com.food.model.MypageVO;
import com.food.model.OrderlistVO;
import com.food.model.UserVO;

@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	MypageMapper mm;
	
	//마이페이지를 출력하기 위한 구현(아이디연동)
	public UserVO mypage(UserVO user) {
//		System.out.println("마페이지로그인정보"+user);
		return mm.mypage(user);
	}
	
	//회원정보를 출력하기 위한 구현
	public UserVO profile(UserVO user) {
		return mm.profile(user);
	}
	
	//회원정보를 수정하기 위한 구현
	public void edit(UserVO user) {
		mm.edit(user);		
	}
	
	//회원탈퇴페이지를 출력하기 위한 구현
	public UserVO resign(UserVO user) {
		return mm.profile(user);
	}
	
	//회원탈퇴를 위한 구현
	public void resignPost(UserVO user) {
//		System.out.println("탈퇴서비스임플 되는겨");
//		System.out.println(user);
		mm.resignPost(user);
	}
	
	//장바구니 리스트 출력하기 위한 구현
	public ArrayList<CartVO> cartlist(String user_id){
		return mm.cartlist(user_id);
	}
		
	//장바구니 상품 수량을 수정하기 위한 구현
	public int cartmodify(CartVO cart) {
//		System.out.println("수정하는거 연결된겨?");
		return mm.cartmodify(cart);
	}
	
	//장바구니 상품을 삭제하기 위한 구현
	public int cartdelete(int c_no) {
		return mm.cartdelete(c_no);
	}
	
	//장바구니 상품을 주문하기 위한 구현
	public int order(OrderlistVO order) {
		return mm.order(order);
	}
	
	//주문목록을 출력하기 위한 구현
	public List<Map<String, Object>> orderlist(OrderlistVO order){
		return mm.orderlist(order);
	}	
	//주문리스트 건수를 카운팅하기 위한 구현
	public int orderlistCnt(OrderlistVO order) {
		return mm.orderlistCnt(order);
	}
	
	//주문 취소 페이지를 출력하기 위한 구현
	public OrderlistVO canclePage(OrderlistVO order){
		return mm.canclePage(order);
	}

	//주문 취소를 위한 구현
	public int ordercancle(OrderlistVO order) {
		return mm.ordercancle(order);
	}
	
	//주문 취소리스트를 출력하기 위한 구현
	public List<Map<String, Object>> canclelist(OrderlistVO order){
		return mm.canclelist(order);
	}
	
	//주문 취소리스트 건수를 카운팅하기 위한 구현
	public int canclelistCnt(OrderlistVO order) {
		return mm.canclelistCnt(order);
	}
	
	//내가 쓴 글을 출력하기 위한 구현
	public ArrayList<MypageVO> mywrite(MypageVO mypage) {
		return mm.mywrite(mypage);
	}
	
	//게시판 전체 건수 조회
	public int total(MypageVO mypage) {
		return mm.total(mypage);
	}
	
	//내가 쓴 글 상세보기
	public MypageVO mywritedetail(MypageVO mypage) {
		return mm.mywritedetail(mypage);
	}
	
	//내글에 달린 댓글수 카운트
	public int replycnt(MypageVO mypage) {
		return mm.replycnt(mypage);
	}
	
	//내가쓴 댓글 상세보기
	public List<Map<String, Object>> myreply(MypageVO mypage) {
		return mm.myreply(mypage);
	}
	
	//댓글용 전체 건수 조회
	public int retotal(MypageVO mypage) {
		return mm.retotal(mypage);
	}

	//내가 좋아요 한 글 보기
	public List<Map<String, Object>> mylike(MypageVO mypage){
		return mm.mylike(mypage);
	}
	
	//내가 좋아요한 글 수
	public int liketotal(MypageVO mypage) {
		return mm.liketotal(mypage);
	}
}
