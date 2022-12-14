package com.food.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.food.model.CartVO;
import com.food.model.MypageVO;
import com.food.model.OrderlistVO;
import com.food.model.UserVO;

//마이페이지 관련 mapper
public interface MypageMapper {
	
	//마이페이지를 출력하기 위한 DB 작업
	public UserVO mypage(UserVO user);
	
	//회원정보를 출력하기 위한 DB작업
	public UserVO profile(UserVO user);
	
	//회원정보를 수정하기 위한 DB작업
	public void edit(UserVO user);
	
	//회원탈퇴를 하기 위한 DB작업
	public void resignPost(UserVO user);
	
	//장바구니 리스트를 출력하기 위한 DB작업
	public ArrayList<CartVO> cartlist(String user_id);
	
	//장바구니 상품 수량을 수정하기 위한 DB 작업
	public int cartmodify(CartVO cart);
	
	//장바구니 상품을 삭제하기 위한 DB 작업
	public int cartdelete(int c_no);
	
	//장바구니 상품을 주문하기 위한 DB작업
	public int order(OrderlistVO order);
	
	//주문목록을 위한 DB작업
	public List<Map<String, Object>> orderlist(OrderlistVO order);
	
	//주문리스트 건수를 카운팅하기 위한 DB 작업
	public int orderlistCnt(OrderlistVO order);
	
	//주문 취소 페이지를 출력하기 위한 DB작업
	public OrderlistVO canclePage(OrderlistVO order);
	
	//주문 취소를 위한 DB 작업
	public int ordercancle(OrderlistVO order);
	
	//주문 취소 내역을 출력하기 위한 DB 작업
	public List<Map<String, Object>> canclelist(OrderlistVO order);
	
	//주문 취소리스트 건수를 카운팅하기 위한 DB 작업
	public int canclelistCnt(OrderlistVO order);
	
	//내가쓴글을 출력하기위한 DB작업
	public ArrayList<MypageVO> mywrite(MypageVO mypage);
	
	//게시판 전체 건수 조회하는 DB작업
	public int total(MypageVO mypage);
	
	//내가쓴글 상세보기
	public MypageVO mywritedetail(MypageVO mypage);
	
	//내글 댓글수 카운트
	public int replycnt(MypageVO mypage);
	
	//내가쓴 댓글 상세보기
	public List<Map<String, Object>> myreply(MypageVO mypage);
	
	//댓글용 전체 건수 조회하는 DB작업
	public int retotal(MypageVO mypage);
	
	//내가 좋아요 한 글 보기
	public List<Map<String, Object>> mylike(MypageVO mypage);
	
	//내가 좋아요 한 글 수
	public int liketotal(MypageVO mypage);

}
