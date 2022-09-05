package com.food.mapper;

import java.util.ArrayList;

import com.food.model.CriteriaVO;
import com.food.model.NotiBoardVO;

public interface NotiBoardMapper {

	// 게시글 목록
	public ArrayList<NotiBoardVO> list(CriteriaVO criteriaVO);
	// 게시글 상세보기
	public NotiBoardVO detail(NotiBoardVO board);
	// 게시글 수정
	public void modify(NotiBoardVO board);
	// 게시글 삭제
	public void remove(NotiBoardVO board);
	// 게시글 글쓰기
	public void write(NotiBoardVO board);
	// tb_notice테이블 전체 글 수
	public int total(CriteriaVO CriteriaVO);
	
	
}
