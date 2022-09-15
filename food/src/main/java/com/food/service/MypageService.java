package com.food.service;

import java.util.ArrayList;

import com.food.model.CommunityReplyVO;
import com.food.model.MypageVO;
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
	
	//내가 쓴글을 출력하기 위한 설계
	public ArrayList<MypageVO> mywrite(MypageVO mypage);
	
	//게시판 전체 건수 설계
	public int total(MypageVO mypage);
	
	//내가 쓴 글 상세보기
	public MypageVO mywritedetail(MypageVO mypage);
	
	//댓글에서 글번호 가져오기
	public int bno(MypageVO mypage);
	
	//내 댓글 상세보기
	public ArrayList<CommunityReplyVO> myreply(CommunityReplyVO reply);

}
