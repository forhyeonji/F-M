package com.food.service;

import java.util.ArrayList;

import com.food.model.CriteriaVO;
import com.food.model.MypageVO;
//마이페이지 관련 serivece
public interface MypageService {
	
	//내가 쓴글을 출력하기 위한 설계
	public ArrayList<MypageVO> mywrite(CriteriaVO cri);
	
	//게시판 전체 건수 설계
	public int total();
	
	//내가 쓴 글 상세보기
	public MypageVO mywritedetail(MypageVO mypage);

}
