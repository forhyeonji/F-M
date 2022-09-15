package com.food.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.mapper.MypageMapper;
import com.food.model.CommunityReplyVO;
import com.food.model.MypageVO;
import com.food.model.UserVO;

@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	MypageMapper mm;
	
	//마이페이지를 출력하기 위한 구현(아이디연동)
	public UserVO mypage(UserVO user) {
		System.out.println("마페이지로그인정보"+user);
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
		System.out.println("탈퇴서비스임플 되는겨");
		System.out.println(user);
		mm.resignPost(user);
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

	//내가쓴 댓글 상세보기
	public List<Map<String, Object>> myreply(CommunityReplyVO reply) {
		System.out.println("댓글서비스임플되는겨?");
		
		return mm.myreply(reply);
	}


}
