package com.food.service;

import com.food.model.CommunityVO;
import com.food.model.ReqPageVO;

import java.util.List;


public interface CommunityService1 {
    // 글쓰기 설계
//    public void write(BoardVO board);
    int boardWrite(CommunityVO communityVO);

    // 글 목록 리스트 설계
//    public ArrayList<BoardVO> list(CriteriaVO criteriaVO);
//    ArrayList<CommunityVO> boardList(CommunityVO communityVO);
    List<CommunityVO> selectBoardList(ReqPageVO reqPageVO);

    // 글 상세 내용 보기 설계
    CommunityVO boardDetail(CommunityVO communityVO);

    // 글 수정 설계
    int boardModify(CommunityVO communityVO);

    // 글 삭제 설계
    int boardDelete(CommunityVO communityVO);

    int total();
}
