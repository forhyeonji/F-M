package com.food.mapper;

import java.util.ArrayList;

import com.food.model.MypageVO;
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
	
	//내가쓴글을 출력하기위한 DB작업
	public ArrayList<MypageVO> mywrite(MypageVO mypage);
	
	//게시판 전체 건수 조회하는 DB작업
	public int total(MypageVO mypage);
	
	//내가쓴글 상세보기
	public MypageVO mywritedetail(MypageVO mypage);

}
