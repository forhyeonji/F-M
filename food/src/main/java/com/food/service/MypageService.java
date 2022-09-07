package com.food.service;

import java.util.ArrayList;

import com.food.model.CriteriaVO;
import com.food.model.MypageVO;
import com.food.model.UserVO;
//마이페이지 관련 serivece
public interface MypageService {
	
	//마이페이지를 출력하기 위한 설계(아이디 연동)
	public UserVO mypage(UserVO user);
	
	//내가 쓴글을 출력하기 위한 설계
	public ArrayList<MypageVO> mywrite(CriteriaVO cri);
	
	//게시판 전체 건수 설계
	public int total(UserVO user);
	
	//내가 쓴 글 상세보기
	public MypageVO mywritedetail(MypageVO mypage);

}
