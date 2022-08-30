package com.food.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.mapper.MypageMapper;
import com.food.model.MypageVO;

@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	MypageMapper mm;
	
	//내가 쓴 글을 출력하기 위한 구현
	public ArrayList<MypageVO> mywrite() {
		return mm.mywrite();
	}

}
