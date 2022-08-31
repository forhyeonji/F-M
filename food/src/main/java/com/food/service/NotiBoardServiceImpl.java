package com.food.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.mapper.NotiBoardMapper;
import com.food.model.CriteriaVO;
import com.food.model.NotiBoardVO;
@Service
public class NotiBoardServiceImpl implements NotiBoardService  {

	@Autowired
	NotiBoardMapper nbm;
	
	// 게시글 목록
	public ArrayList<NotiBoardVO> list(CriteriaVO CriteriaVO) {
		return nbm.list(CriteriaVO);
	}	
	// 게시글 상세보기
	public NotiBoardVO detail(NotiBoardVO board) {
		return nbm.detail(board);
	}
	// 게시글 수정
	public void modify(NotiBoardVO board) {
		System.out.println(board);
			nbm.modify(board);
	}
	// 게시글 삭제
		public void remove(NotiBoardVO board) {
			nbm.remove(board);
		}
	// 게시글 글쓰기
		public void write(NotiBoardVO board) {
			nbm.write(board);
		}
	// tb_notice테이블 전체 글 수
		public int total(CriteriaVO CriteriaVO) {
			return nbm.total(CriteriaVO);
		}
	
	
	
	
}
