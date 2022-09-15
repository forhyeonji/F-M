package com.food.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.food.model.CommunityReplyVO;
import com.food.model.CriteriaVO;
import com.food.model.MypageVO;
import com.food.model.PageVO;
import com.food.model.UserVO;
import com.food.service.MypageService;

@Controller
public class MypageController {
	
	@Autowired
	MypageService ms;
	
	//마이페이지
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(UserVO user, MypageVO mypage, Model model, HttpSession session) {
		String id = (String) session.getAttribute("user_id");
		user.setUser_id(id);
		mypage.setUser_id(id);

		model.addAttribute("mypage", ms.mypage(user));
		return "Mypage/mypage";
	}
	//회원정보페이지
	@RequestMapping(value = "mypage/profile_edit", method = RequestMethod.GET)
	public String profile(UserVO user, Model model, HttpSession session) {
		String id = (String) session.getAttribute("user_id");
		user.setUser_id(id);
		model.addAttribute("profile", ms.profile(user));
		return "Mypage/profile_edit";
	}
	//회원정보 수정 (update)
	@RequestMapping(value = "mypage/edit", method = RequestMethod.POST)
	public String edit(UserVO user, HttpSession session, RedirectAttributes rttr) {
		String id = (String) session.getAttribute("user_id");
		user.setUser_id(id);
		ms.edit(user);
		rttr.addAttribute("id", user.getUser_id());
		return "redirect:/mypage/profile_edit";
	}
		
	//회원 탈퇴 화면 페이지
	@RequestMapping(value = "mypage/resign", method = RequestMethod.GET)
	public String resign(UserVO user, Model model, HttpSession session) {
		String id = (String) session.getAttribute("user_id");
		user.setUser_id(id);
		model.addAttribute("resign", ms.resign(user));
		return "Mypage/resign";
	}
	
	//회원 탈퇴 (delete)
	@RequestMapping(value = "mypage/resign", method = RequestMethod.POST)
	public String resignPost(UserVO user, HttpSession session) {
		String id = (String) session.getAttribute("user_id");
		user.setUser_id(id);
		ms.resignPost(user);
		System.out.println("어디서 안된느겨");
		System.out.println(user);
		session.invalidate();
		return "Main/main";
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
	//내가 쓴 글 목록
	@RequestMapping(value = "mypage/mywrite", method = RequestMethod.GET)
	public String mywrite(UserVO user, MypageVO mypage, Model model, CriteriaVO cri, HttpSession session) {
		String id = (String) session.getAttribute("user_id");
		System.out.println("내글아이디"+id);
		user.setUser_id(id);		
		mypage.setUser_id(id);
		
		
		model.addAttribute("user", ms.mypage(user));
		model.addAttribute("mywrite", ms.mywrite(mypage));		
		int total = ms.total(mypage);
		model.addAttribute("paging", new PageVO(cri, total));
		return "Mypage/mywrite";
	}
	
	//내가 쓴 글 상세보기
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String mywritedetail(MypageVO mypage, Model model) {
		model.addAttribute("mywritedetail", ms.mywritedetail(mypage));
		return "/detail";
	}	

	
	//내가 쓴 댓글 목록	
	@RequestMapping(value = "mypage/myreply", method = RequestMethod.GET)
	public String myreply(UserVO user, MypageVO mypage, CommunityReplyVO reply, CriteriaVO cri, Model model, HttpSession session) {
		String id = (String)session.getAttribute("user_id");
		System.out.println("내[[[댓글]]]아이디"+id);
		user.setUser_id(id);
		reply.setUser_id(id);
		mypage.setUser_id(id);
		
		model.addAttribute("user", ms.mypage(user));
		model.addAttribute("myreply", ms.myreply(reply));
		
		int total = ms.total(mypage);
		model.addAttribute("paging", new PageVO(cri, total));		
		return "Mypage/myreply";
	}
	
	//내가 좋아요 누른 글 목록
	@RequestMapping(value = "mypage/mylike", method = RequestMethod.GET)
	public String mylike() {
		return "Mypage/mylike";
	}
	
	//찜한 상품
	@RequestMapping(value = "mypage/mykeep", method = RequestMethod.GET)
	public String mykeep() {
		return "Mypage/mykeep";
	}	
	
	//내가쓴 상품평
	@RequestMapping(value = "mypage/myreview", method = RequestMethod.GET)
	public String myreview() {
		return "Mypage/myreview";
	}	
}
