package com.food.mapper;

import java.util.ArrayList;

import com.food.model.CriteriaVO;
import com.food.model.MypageVO;

//마이페이지 관련 mapper
public interface MypageMapper {
	//내가쓴글을 출력하기위한 DB작업
	public ArrayList<MypageVO> mywrite(CriteriaVO cri);
	
	//게시판 전체 건수 조회하는 DB작업
	public int total();
	
	//내가쓴글 상세보기
	public MypageVO mywritedetail(MypageVO mypage);

}
