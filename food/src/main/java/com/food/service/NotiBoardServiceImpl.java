package com.food.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.mapper.NotiBoardMapper;
import com.food.model.CriteriaVO;
import com.food.model.MypageVO;
import com.food.model.NotiBoardVO;
import com.food.model.UserVO;
@Service
public class NotiBoardServiceImpl implements NotiBoardService  {

	@Autowired
	NotiBoardMapper nbm;
	
	// 게시글 목록
	public ArrayList<NotiBoardVO> list(CriteriaVO criteriaVO) {

		System.out.println("서비스="+nbm.list(criteriaVO));
		
		return nbm.list(criteriaVO);
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
		public int total(CriteriaVO criteriaVO) {
			return nbm.total(criteriaVO);
		}
		
	// 1:1 질의 내가 쓴 글
		public int total2(MypageVO mypage) {
			return nbm.total2(mypage);
		}
		
	// 1:1 질의 내가 쓴 글
		public ArrayList<MypageVO> mywrite(MypageVO mypage) {
			return nbm.mywrite(mypage);
		}
		
		
		public UserVO mypage(UserVO user) {
			return nbm.mypage(user);
		}
	
	
	
	
}
