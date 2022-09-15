package com.food.service;

import java.util.ArrayList;

import com.food.model.AnswerVO;
import com.food.model.CriteriaVO;
import com.food.model.MypageVO;
import com.food.model.NotiBoardVO;
import com.food.model.UserVO;

public interface NotiBoardService {

	// 게시글 목록
	public ArrayList<NotiBoardVO> list(CriteriaVO criteriaVO);
	
	// 게시글 상세보기
	public NotiBoardVO detail(NotiBoardVO board);
	// 글수정
	public void modify(NotiBoardVO board);
	// 글수정
	public void remove(NotiBoardVO board);
	// 글쓰기
	public void write(NotiBoardVO board);
	
	// 관리자 답변 글쓰기
	public void answer(AnswerVO ans);
	
	// tb_notice 테이블 전체 건수 설계
	public int total(CriteriaVO criteriaVO);
	// 1:1질의 전체 글 수
	public int total2(MypageVO mypage);
	// 1:1질의 내가쓴 글 
	public ArrayList<MypageVO> mywrite(MypageVO mypage);
	
	public UserVO mypage(UserVO user);
}
