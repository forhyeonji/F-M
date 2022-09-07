package com.food.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.mapper.MypageMapper;
import com.food.model.CriteriaVO;
import com.food.model.MypageVO;
import com.food.model.UserVO;

@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	MypageMapper mm;
	
	//마이페이지를 출력하기 위한 구현(아이디연동)
	public UserVO mypage(UserVO user) {
		System.out.println("로그인정보"+user);
		return mm.mypage(user);
	}
	
	//내가 쓴 글을 출력하기 위한 구현
	public ArrayList<MypageVO> mywrite(CriteriaVO cri) {
		return mm.mywrite(cri);
	}
	
	//게시판 전체 건수 조회
	public int total(UserVO user) {
		return mm.total(user);
	}
	
	//내가 쓴 글 상세보기
	public MypageVO mywritedetail(MypageVO mypage) {
		return mm.mywritedetail(mypage);
	}

}
