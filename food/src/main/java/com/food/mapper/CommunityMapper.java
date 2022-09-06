package com.food.mapper;

import com.food.model.CommunityVO;
import com.food.model.ReqPageVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CommunityMapper {
    // 글쓰기에 해당되는 DB작업 설계
    void insertCommunity(CommunityVO communityVO);

    // 게시글 목록 리스트에 해당되는 DB작업 설계
    List<CommunityVO> selectBoardList(ReqPageVO reqPageVO);
    int selectCommunityCount(ReqPageVO reqPageVO);
    CommunityVO selectCommunityOne(String bno);

    int rowCount(CommunityVO communityVO);

    int putCommunity(CommunityVO communityVO);

    int deleteCommunity(int bno);
}
