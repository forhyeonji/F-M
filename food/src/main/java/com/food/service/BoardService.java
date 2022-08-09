package com.food.service;

import com.food.model.BoardVO;

import java.util.List;

public interface BoardService {
    // 글쓰기 설계
    public void write(BoardVO board);
    // 글 목록 리스트 설계
    public List<BoardVO> selectBoardList(BoardVO board) throws Exception;
    // 글 상세 내용 보기 설계
    // 글 수정 설계
    // 글 삭제 설계
}
