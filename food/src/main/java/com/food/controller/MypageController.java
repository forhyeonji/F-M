package com.food.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.food.model.CartVO;
import com.food.model.CriteriaVO;
import com.food.model.MypageVO;
import com.food.model.OrderlistVO;
import com.food.model.PageVO;
import com.food.model.UserVO;
import com.food.model.VoteVo;
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
		
		String result="";
		if(id != null) {			//로그인된 아이디있으면
			result = "Mypage/mypage"; //마이페지로 이동
		}else {
			result = "/Main/insert";	//없으면 회원가입으로 이동
		}

		model.addAttribute("mypage", ms.mypage(user));
		return result;
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
//		System.out.println("어디서 안된느겨");
//		System.out.println(user);
		session.invalidate();
		return "Main/main";
	}
	
	//장바구니
	@RequestMapping(value = "mypage/cart", method = RequestMethod.GET)
	public String cart(Model model, HttpSession session, UserVO user) {
		String id = (String) session.getAttribute("user_id");
		user.setUser_id(id);
		model.addAttribute("cartlist", ms.cartlist(id));
		return "Mypage/cart";
	}
	//장바구니는 비동기 도전!!
	//장바구니 리스트 출력
	@RequestMapping(value="/mypage/cart/{user_id}", method=RequestMethod.GET)
	public ResponseEntity<ArrayList<CartVO>> cartlist(Model model, @PathVariable String user_id){
		System.out.println(user_id);
		model.addAttribute("cartlist", ms.cartlist(user_id));
		return new ResponseEntity<>(ms.cartlist(user_id), HttpStatus.OK);		
	}
	
	//장바구니 상품 수량 수정
	@ResponseBody
	@RequestMapping(value="/mypage/cart/modify", method=RequestMethod.PUT)
	public ResponseEntity<String> cartmodify(HttpSession session, @RequestBody CartVO cart){
		String id = (String)session.getAttribute("user_id");
		cart.setUser_id(id);
		int result = ms.cartmodify(cart);
		System.out.println("수정하는거 콘트롤러 연결된겨?");
		System.out.println(cart);
		return result==1? new ResponseEntity<>("success", HttpStatus.OK)
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	//장바구니 상품 삭제
	@RequestMapping(value="/mypage/cart/delete/{c_no}", method=RequestMethod.DELETE)
	public ResponseEntity<String> cartdelete(@PathVariable int c_no){
		int result = ms.cartdelete(c_no);
		
		return result==1? new ResponseEntity<>("success",HttpStatus.OK)
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	//장바구니 상품 주문하기
	@RequestMapping(value="/mypage/cart/order/{o_no}", method = RequestMethod.POST)
	public ResponseEntity<String> order(HttpSession session, @RequestBody OrderlistVO order, @PathVariable int o_no){
		//로그인한 아이디로 주문
		String id = (String)session.getAttribute("user_id");
		order.setUser_id(id);
		
		int result = ms.order(order);
		
		return result==1? new ResponseEntity<>("success", HttpStatus.OK)
						: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	//주문 리스트
	@RequestMapping(value = "mypage/orderlist", method = RequestMethod.GET)
	public String orderlist(Model model, HttpSession session, UserVO user) {
		String id = (String) session.getAttribute("user_id");
		user.setUser_id(id);
		model.addAttribute("orderlist", ms.orderlist(id));
		return "Mypage/orderlist";
	}		
	
	//주문 리스트
	@RequestMapping(value="/mypage/orderlist/{user_id}", method=RequestMethod.GET)
	public ResponseEntity<ArrayList<OrderlistVO>> orderlistget(Model model, @PathVariable String user_id){
		System.out.println(user_id);
		model.addAttribute("orderlist", ms.orderlist(user_id));
		return new ResponseEntity<>(ms.orderlist(user_id), HttpStatus.OK);		
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
	//MypageVO에 몰빵해서 페이징(완료)
	@RequestMapping(value = "mypage/mywrite", method = RequestMethod.GET)
	public String mywrite(UserVO user, MypageVO mypage, 
			Model model, CriteriaVO cri, 
			HttpSession session) {
		String id = (String) session.getAttribute("user_id");
		System.out.println("내글아이디"+id);
		user.setUser_id(id);		
		mypage.setUser_id(id);
		
		model.addAttribute("replycnt", ms.replycnt(mypage));
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
	
	//내가 쓴 [[[댓]]]글 목록
	//VO를 list로 보내서 페이징 (완료!!)
	@RequestMapping(value = "mypage/myreply", method = RequestMethod.GET)
	public String myreply(UserVO user, MypageVO mypage, 
			CriteriaVO cri, Model model, HttpSession session) {
		String id = (String)session.getAttribute("user_id");
		System.out.println("내[[[댓글]]]아이디"+id);
		user.setUser_id(id);
		mypage.setUser_id(id);
	
		model.addAttribute("user", ms.mypage(user));
		model.addAttribute("myreply", ms.myreply(mypage));
		
		int total = ms.retotal(mypage);
		model.addAttribute("paging", new PageVO(cri, total));		
		return "Mypage/myreply";
	}
		

	//내가 좋아요 누른 글 목록
	@RequestMapping(value = "mypage/mylike", method = RequestMethod.GET)
	public String mylike(HttpSession session, UserVO user, VoteVo vote, MypageVO mypage, Model model,
			CriteriaVO cri ) {
		String id = (String)session.getAttribute("user_id");
		user.setUser_id(id);
		vote.setUser_id(id);
		mypage.setUser_id(id);
		
		model.addAttribute("user", ms.mypage(user));
		model.addAttribute("mylike", ms.mylike(mypage));
		
		int total = ms.liketotal(mypage);
		model.addAttribute("paging", new PageVO(cri, total));
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
