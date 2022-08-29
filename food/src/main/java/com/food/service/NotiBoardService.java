package com.food.service;

import java.util.ArrayList;

import com.food.model.NotiBoardVO;

public interface NotiBoardService {
	
	// 게시글 목록
	public ArrayList<NotiBoardVO> list();
	// 게시글 상세보기
	public NotiBoardVO detail(NotiBoardVO board);
	// 글수정
	public void modify (NotiBoardVO board);
	// 글수정
	public void remove (NotiBoardVO board);
	// 글쓰기
	public void write (NotiBoardVO board);
}
