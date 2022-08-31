package com.food.mapper;

import com.food.model.CommunityVO;
import com.food.model.ReqPageVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CommunityMapper {
    // 글쓰기에 해당되는 DB작업 설계
//    public void write(BoardVO board);
    public int boardWrite(CommunityVO communityVO);

    // 게시글 목록 리스트에 해당되는 DB작업 설계
//    ArrayList<CommunityVO> boardList(CommunityVO communityVO);

    List<CommunityVO> selectBoardList(ReqPageVO reqPageVO);
    int selectCommunityCount(ReqPageVO reqPageVO);
    CommunityVO selectCommunityOne(String bno);

    // 게시글 상세보기에 해당되는 DB작업 설계
    CommunityVO boardDetail(CommunityVO communityVO);

    // 조회수 업데이트
    void cntup(CommunityVO communityVO);

    // 게시글 수정에 해당되는 DB작업 설계
    int boardModify(CommunityVO communityVO);

    // 게시글 삭제에 해당되는 DB작업 설계
    int boardDelete(CommunityVO communityVO);

    // 게시판 총 수
    int total();
}
