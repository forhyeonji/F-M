package com.food.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MypageController {

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage() {
		return "Mypage/mypage";
	}
	//프로필 수정
	@RequestMapping(value = "mypage/profile_edit", method = RequestMethod.GET)
	public String profileedit() {
		return "Mypage/profile_edit";
	}
	//회원 탈퇴
	@RequestMapping(value = "mypage/resign", method = RequestMethod.GET)
	public String resign() {
		return "Mypage/resign";
	}
	//장바구니
	@RequestMapping(value = "mypage/cart", method = RequestMethod.GET)
	public String cart() {
		return "Mypage/cart";
	}	
	//주문 리스트
	@RequestMapping(value = "mypage/orderlist", method = RequestMethod.GET)
	public String orderlist() {
		return "Mypage/orderlist";
	}
	//주문 상세보기
	@RequestMapping(value = "mypage/orderdetail", method = RequestMethod.GET)
	public String orderdetail() {
		return "Mypage/orderdetail";
	}
	//주문 취소
	@RequestMapping(value = "mypage/ordercancle", method = RequestMethod.GET)
	public String ordercancle() {
		return "Mypage/ordercancle";
	}
	//주문_취소 리스트
	@RequestMapping(value = "mypage/canclelist", method = RequestMethod.GET)
	public String canclelist() {
		return "Mypage/canclelist";
	}
	//주문 반품
	@RequestMapping(value = "mypage/orderrefund", method = RequestMethod.GET)
	public String orderrefund() {
		return "Mypage/orderrefund";
	}
	//배송조회
	@RequestMapping(value = "mypage/delivery", method = RequestMethod.GET)
	public String delivery() {
		return "Mypage/delivery";
	}
	//내가 쓴 글 보기
	@RequestMapping(value = "mypage/mywrite", method = RequestMethod.GET)
	public String mywrite() {
		return "Mypage/mywrite";
	}
	//내가 쓴 댓글 보기
	@RequestMapping(value = "mypage/myreply", method = RequestMethod.GET)
	public String myreply() {
		return "Mypage/myreply";
	}
	//내가 좋아요 누른 글 보기
	@RequestMapping(value = "mypage/mylike", method = RequestMethod.GET)
	public String mylike() {
		return "Mypage/mylike";
	}
}
